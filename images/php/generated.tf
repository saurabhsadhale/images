# DO NOT EDIT - this file is autogenerated by tfgen

output "summary" {
  value = merge(
    {
      for k, v in module.versioned : k => {
        "ref"    = v.image_ref
        "config" = v.config
        "tags"   = v.tag_list
      }
    },
    {
      for k, v in module.versioned-fpm : k => {
        "ref"    = v.image_ref
        "config" = v.config
        "tags"   = v.tag_list
      }
  })
}

