let () =
  let bv = match Build_info.V1.version () with
  | None -> "<no version>"
  | Some v -> Build_info.V1.Version.to_string v
  in
  let sv = "%%VERSION_NUM%%" in
  Format.printf "dune-build-info: %s\n" bv;
  Format.printf "dune subst: %s\n" sv
