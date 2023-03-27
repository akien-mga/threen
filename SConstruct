#!/usr/bin/env python

libname = "libthreen"

env = SConscript("godot-cpp/SConstruct")

env.Append(CPPPATH=["src/"])
sources = Glob("src/*.cpp")


import editor_builders


docs_xml = []
docs_xml += Glob("#src/doc_classes/*.xml")
docs_xml = sorted(docs_xml)
docs_header = "#src/doc_data_compressed_{}.gen.h".format(libname)
env.Command(docs_header, docs_xml, env.Action(editor_builders.make_doc_header, "Generating documentation header."))


if env["platform"] == "macos":
    platlibname = "{}.{}.{}".format(libname, env["platform"], env["target"])
    library = env.SharedLibrary(
        "bin/{}.framework/{}".format(platlibname, platlibname),
        source=sources,
    )
else:
    library = env.SharedLibrary(
        "bin/{}{}{}".format(libname, env["suffix"], env["SHLIBSUFFIX"]),
        source=sources,
    )

env.Depends(library, docs_header)

Default(library)
