..
  AUTO-GENERATED by extract_odm_strings.py! DO NOT EDIT!
  If you want to add more details to a command, create a
  .rst file in arguments_edit/<argument>.rst

.. _geo:

geo
```

**Options:** *<path string>*

Path to the image geolocation file containing the camera center coordinates used for georeferencing. Note that omega/phi/kappa are currently not supported (you can set them to 0). The file needs to use the following format: EPSG:<code> or <+proj definition>image_name geo_x geo_y geo_z [omega (degrees)] [phi (degrees)] [kappa (degrees)] [horz accuracy (meters)] [vert accuracy (meters)]Default: ``None``

.. include:: ../arguments_edit/geo.rst

`Learn to edit <https://github.com/opendronemap/docs#how-to-make-your-first-contribution>`_ and help improve `this page <https://github.com/OpenDroneMap/docs/blob/publish/source/arguments_edit/geo.rst>`_!
