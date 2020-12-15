��    s      �              L  �   M  �   ,  	   	  �   !	  �   �	  *   �
  g   �
  �     �   �  �   �  �   R  !     �   $     �     �     �     �                1     @     Q     c     w     �     �     �     �     �     �     �     �     	          *     9     N     a     w     �     �     �     �     �     �  �    �   �  +   7  �   c  3   �  3   /  �   c     �  �     -   �  �       �  7   �  l   0  �   �  2  �  �   �  W  s  k   �     7  N   I  C   �  8   �       M   1  �        =  /   [  :   �  A   �  $         -   �   C      �   )   !  C   B!  �   �!  �   ^"  �   #  �   �#  t   u$  k   �$  �   V%  2   &     Q&  7   m&  C   �&  <   �&  =   &'  "   d'  p   �'     �'  .   (     G(  �   a(  ,   �(    )  i   !*  7   �*  +   �*  c   �*  �   S+  7   �+  Q   ,  �   l,  �   -  �   �-  �   ].  {   </  �  �/  �   �1  @  x2  
   �3  �   �3  �   �4  6   i5  �   �5  �   >6  �   �6  �   �7  �   �8  &   �9  �   �9     b:  !   y:     �:     �:     �:     �:     �:     ;     (;     A;     \;     s;     �;     �;     �;     �;     �;     �;     <     -<     F<     \<     r<     �<     �<     �<     �<     �<  "   =     9=     Q=     j=  �  �=  �   C?  3   �?  �   )@  :   �@  :   *A  �   eA  *   B    1B  J   9C  �   �C  m  UD  @   �E  �   F  (  �F  �  �G  �   EI  �  J  �   �K     IL  O   `L  D   �L  9   �L     /M  N   LM  �   �M     ZN  0   yN  ;   �N  B   �N  )   )O      SO  �   tO     OP  +   oP  L   �P  �   �P  �   �Q  �   �R  �   |S  �   tT  �   �T  �   �U  ;   tV  !   �V  @   �V  K   W  O   _W  I   �W  (   �W  �   "X  )   �X  =   �X  '   Y  �   7Y  5   �Y  %  Z  �   2[  >   �[  C   \  q   \\  �   �\  L   }]  ]   �]  �   (^  �   �^  �   �_  �   {`  �   [a   **Experimental.** Skips dense reconstruction and 3D model generation. It generates an orthophoto directly from the sparse reconstruction. If you just need an orthophoto and do not need a full 3D model, turn on this option. Affects orthophotos only. Higher values result in sharper corners, but can affect color distribution and blurriness. Use lower values for planar areas and higher values for urban areas. The default value works well for most scenarios. Arguments Automatically crop image outputs by creating a smooth buffer around the dataset boundaries, shrinked by N meters. Use ``0`` to disable cropping. Average number of images per submodel. When splitting a large dataset into smaller submodels, images are grouped into clusters. This value regulates the number of images that each cluster should have on average. Build orthophoto overviews using gdaladdo. Choose what to merge in the merge step in a split dataset. By default all available outputs are merged. Classify the point cloud outputs using a Simple Morphological Filter. You can control the behavior of this option by tweaking the ``--dem-*`` parameters. Computes an euclidean raster map for each DEM. The map reports the distance from each cell to the nearest NODATA value (before any hole filling takes place). This can be useful to isolate the areas that have been filled. Control whether the created orthophoto is a BigTIFF or classic TIFF. BigTIFF is a variant for files larger than 4GiB of data. See GDAL specs: https://www.gdal.org/frmt_gtiff.html for more info. Controls the density of the point cloud by setting the resolution of the depthmap images. Higher values take longer to compute and more memory but produce denser point clouds. DSM/DTM resolution in cm / pixel. Decimate the points before generating the DEM. ``1`` is no decimation (full quality). ``100`` decimates ~99% of the points. Useful for speeding up generation. Default: *None* Default: *number of cores* Default: None. Default: ``0.15`` Default: ``0.5`` Default: ``0.6`` Default: ``0`` Default: ``1.0`` Default: ``1.25`` Default: ``100000`` Default: ``16`` Default: ``18.0`` Default: ``1`` Default: ``2.5`` Default: ``2048`` Default: ``3`` Default: ``4`` Default: ``5`` Default: ``640`` Default: ``8000`` Default: ``8`` Default: ``9`` Default: ``DEFLATE`` Default: ``False`` Default: ``IF_SAFER`` Default: ``PATCH_MATCH`` Default: ``all`` Default: ``auto`` Default: ``gauss_clamping`` Default: ``gmi`` Default: ``high`` Default: ``none`` Delete heavy intermediate files (such as original orthos, dtm, dsm) to optimize disk space usage, while keeping the compressed versions. This affects the ability to restart the pipeline from an intermediate stage, but allows datasets to be processed on machines that don't have sufficient disk space available. Also, in this mode, the "reports" does not get written under the output 'opensfm' folder. Discard points that have less than a certain confidence threshold. This only affects dense reconstructions performed with MVE. Higher values discard more points. Displays software version number and exits. Distance threshold in meters to find pre-matching images based on GPS exif data. Set both ``matcher-neighbors`` and this to ``0`` to skip pre-matching. Export the georeferenced point cloud in CSV format. Export the georeferenced point cloud in LAS format. Filters the point cloud by removing points that deviate more than N standard deviations from the local mean. Set to ``0`` to disable filtering. Force rerun of all tasks. Generates Entwine Point Cloud. Useful on its own, this flag is automatically added when running in WebODM and useful for creating the correct directory structure when running on NodeODM or command line for import into WebODM. Generates a benchmark file with runtime info. Generates a polygon around the cropping area that cuts the orthophoto around the edges of features. This polygon can be useful for stitching seamless mosaics with multiple overlapping orthophotos. Ignore Ground Sampling Distance (GSD). GSD caps the maximum resolution of image outputs and resizes images when necessary, resulting in faster processing and lower memory usage. Since GSD is an estimate, sometimes ignoring it can result in slightly better image output quality. Keep faces in the mesh that are not seen in any camera. Minimum number of features to extract per image. More features leads to better results but slower execution. Minimum number of views that should reconstruct a point for it to be valid. Use lower values if your images have less overlap. Lower values result in denser point clouds but with more noise. Only applies if using OpenSfM for dense matching. Number of nearest images to pre-match based on GPS exif data. Set to ``0`` to skip pre-matching. Neighbors works together with Distance parameter, set both to 0 to not use pre-matching. OpenSFM uses both parameters at the same time, Bundler uses only one which has value, prefering the Neighbors parameter. Number of points per octree node. For relatively low noise, values in the range of [1-5] can be used. For noisier datasets, large values in the range of [15-20] may be employed. Number of steps used to fill areas with gaps. Set to ``0`` to disable gap filling. Starting with a radius equal to the output resolution, N different DEMs are generated with progressively bigger radius using the inverse distance weighted (IDW) algorithm and merged together. Remaining gaps are then merged using nearest neighbor interpolation. Oct-tree depth used in the mesh reconstruction, increase to get more vertices, recommended values are 8-12. Options and Flags Options: ``JPEG`` | ``LZW`` | ``PACKBITS`` | ``DEFLATE`` | ``LZMA`` | ``NONE`` Options: ``PATCH_MATCH`` | ``PATCH_MATCH_SAMPLE`` | ``BRUTE_FORCE`` Options: ``YES`` | ``NO`` | ``IF_NEEDED`` | ``IF_SAFER`` Options: ``area`` | ``gmi`` Options: ``auto`` | ``perspective`` | ``brown`` | ``fisheye`` | ``spherical`` Options: ``dataset`` | ``split`` | ``merge`` | ``opensfm`` | ``mve`` | ``odm_filterpoints`` | ``odm_meshing`` | ``mvs_texturing`` | ``odm_georeferencing`` | ``odm_dem`` | ``odm_orthophoto`` Options: ``gamma`` | ``none`` Options: ``none`` | ``camera`` | ``camera+sun`` Options: ``none`` | ``gauss_damping`` | ``gauss_clamping`` Options: ``ultra`` | ``high`` | ``medium`` | ``low`` | ``lowest`` Orthophoto resolution in cm / pixel. Path to input images. Path to the file containing the ground control points used for georeferencing. The file needs to have the following line format: ``easting northing height pixelrow pixelcol imagename`` Path to the project folder. Print additional messages to the console. Projection used to transform the model into geographic coordinates. Radius of the overlap between submodels. After grouping images into clusters, images that are closer than this radius to a cluster are added to the cluster. This is done to ensure that neighboring submodels overlap. Raw depthmap computation algorithm. ``PATCH_MATCH`` and ``PATCH_MATCH_SAMPLE`` are faster, but might miss some valid points. ``BRUTE_FORCE`` takes longer but produces denser reconstructions. Run local bundle adjustment for every image added to the reconstruction and a global adjustment every 100 images. Speeds up reconstruction for very large datasets. Set a camera projection type. Manually setting a value can help improve geometric undistortion. By default the application tries to determine a lens type from the images metadata. Set feature extraction quality. Higher quality generates better features, but requires more memory and takes longer. Set the compression to use. Note that this could break gdal_translate if you don't know what you are doing. Set the radiometric calibration to perform on images. When processing multispectral images you should set this option to obtain reflectance values (otherwise you will get digital number (DN) values). Set this parameter if you want a stripped geoTIFF. Show help message and exit. Simple Morphological Filter elevation scalar parameter. Simple Morphological Filter elevation threshold parameter (meters). Simple Morphological Filter slope parameter (rise over run). Simple Morphological Filter window radius parameter (meters). Skip filling of holes in the mesh. Skip generation of a full 3D model. This can save time if you only need 2D results such as orthophotos and DEMs. Skip geometric visibility test. Skip global seam leveling. Useful for IR data. Skip local seam blending. The maximum number of processes to use in various processes. Peak memory requirement is ~1GB per thread and 2 megapixel image resolution. The maximum vertex count of the output mesh. This floating point value specifies the importance that interpolation of the point samples is given in the formulation of the screened Poisson equation. The results of the original (unscreened) Poisson Reconstruction can be obtained by setting this value to ``0``. Turn off camera parameter optimization during bundler. Off by default unless ``--camera`` parameter used. Turn on gamma tone mapping or none for no tone mapping. Type of photometric outlier removal method. URL to a ClusterODM instance for distributing a split-merge workflow on multiple nodes in parallel. Use a full 3D mesh to compute the orthophoto instead of a 2.5D mesh. This option is a bit faster and provides similar results in planar areas. Use opensfm to compute dense point cloud alternatively. Use this tag if you have a gcp_list.txt but want to use the exif geotags instead. Use this tag to build a DSM (Digital Surface Model, ground + objects) using a progressive morphological filter. Check the ``--dem*`` parameters for finer tuning. Use this tag to build a DTM (Digital Terrain Model, ground only) using a simple morphological filter. Check the ``--dem*`` and ``--smrf*`` parameters for finer tuning. When using ``PATCH_MATCH`` or ``PATCH_MATCH_SAMPLE``, controls the standard deviation threshold to include patches. Patches with lower standard deviation are ignored. [``camera+sun``] is experimental, applies all the corrections of [``camera``] and additionally compensates for spectral radiance registered via a downwelling light sensor (DLS) taking in consideration the angle of the sun. [``camera``] applies black level, vignetting, row gradient gain/exposure compensation (if appropriate EXIF tags are found). Project-Id-Version: OpenDroneMap 2.0.0
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2020-12-15 09:17-0500
PO-Revision-Date: 2020-07-21 21:10+0000
Last-Translator: Israel Barragán <israelbar@gmail.com>, 2020
Language: es
Language-Team: Spanish (https://www.transifex.com/americanredcross/teams/111882/es/)
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
 ** Experimental.** Omite la reconstrucción densa y la generación del modelo 3D. Genera una ortofoto directamente a partir de la reconstrucción escasa. Si solo necesita una ortofoto y no necesita un modelo 3D completo, active esta opción. Afecta solo a las ortofotos. Los valores más altos dan como resultado esquinas más nítidas, pero pueden afectar la distribución del color y el desenfoque. Utilice valores más bajos para áreas planas y valores más altos para áreas urbanas. El valor predeterminado funciona bien para la mayoría de los escenarios. Argumentos Recorte automáticamente los resultados de la imagen creando un búfer suave alrededor de los límites del conjunto de datos, reducido en N metros. Utilice ``0`` para deshabilitar el recorte. Número medio de imágenes por submodelo. Al dividir un conjunto de datos grande en submodelos más pequeños, las imágenes se agrupan en grupos. Este valor regula la cantidad de imágenes que debe tener cada grupo en promedio. Crea descripciones generales de ortofoto con gdaladdo. Elije qué combinar en el paso de combinación de un conjunto de datos dividido. De forma predeterminada, se fusionan todas los archivos salidas disponibles. Clasifica las nubes de puntos de salida usando un filtro morfológico simple. Puede controlar el comportamiento de esta opción modificando los parametros ``--dem-*``. Calcula un mapa ráster euclidiano para cada DEM. El mapa informa la distancia desde cada celda al valor NODATA más cercano (antes de que se llene cualquier agujero). Esto puede resultar útil para aislar las áreas que se han llenado. Controle si la ortofoto creada es un BigTIFF o un TIFF clásico. BigTIFF es una variante para archivos de más de 4GiB de datos. Consulte las especificaciones de GDAL: https://www.gdal.org/frmt_gtiff.html para obtener más información. Controla la densidad de la nube de puntos estableciendo la resolución de las imágenes del mapa de profundidad. Los valores más altos tardan más en calcularse y requieren más memoria, pero producen nubes de puntos más densas. Resolución del DSM/DTM en cm 7 pixel. Diezma los puntos antes de generar el DEM. ``1`` no diezma (calidad total). ``100`` diezma ~ 99% de los puntos. Útil para acelerar la generación. Predeterminado: *None* Predeterminado: *number of cores* Predeterminado: None. Predeterminado: ``0.15`` Predeterminado: ``0.5`` Predeterminado: ``0.6`` Predeterminado: ``0`` Predeterminado: ``1.0`` Predeterminado: ``1.25`` Predeterminado: ``100000`` Predeterminado: ``16`` Predeterminado: ``18.0`` Predeterminado: ``1`` Predeterminado: ``2.5`` Predeterminado: ``2048`` Predeterminado: ``3`` Predeterminado: ``4`` Predeterminado: ``5`` Predeterminado: ``640`` Predeterminado: ``8000`` Predeterminado: ``8`` Predeterminado: ``9`` Predeterminado: ``DEFLATE`` Predeterminado: ``False`` Predeterminado: ``IF_SAFER`` Predeterminado: ``PATCH_MATCH`` Predeterminado: ``all`` Predeterminado: ``auto`` Predeterminado: ``gauss_clamping`` Predeterminado: ``gmi`` Predeterminado: ``high`` Predeterminado: ``none`` Elimine archivos intermedios pesados (como ortofotos originales, dtm, dsm) para optimizar el uso del espacio en disco, manteniendo las versiones comprimidas. Esto afecta la capacidad de reiniciar la canalización desde una etapa intermedia, pero permite que los conjuntos de datos se procesen en máquinas que no tienen suficiente espacio en disco disponible. Además, en este modo, los "informes" no se escriben en la carpeta de salida 'opensfm'. Descarta puntos que tienen menos de un cierto nivel de confianza. Esto afecta solamente a las reconstrucciones densas hechas con MVE. Los valores mas altos descartan mas puntos. Muestra el número de versión del software y sale. Umbral de distancia en metros, para encontrar imágenes pre-coincidentes basado en los datos exif de GPS. Establezca ambos  ``matcher-neighbors`` y este en ``0`` para saltar la comparación previa. Exportar la nube de puntos georeferenciada en formato CSV. Exportar la nube de puntos georeferenciada en formato LAS. Filtra la nube de puntos eliminando puntos que se desvían mas de N desviaciones estándar del promedio local. Configure en ``0`` para deshabilitar el filtrado. Forzar la repetición de todas las tareas. Genera una Nube de Puntos Entwine. Útil por sí solo, este indicador se agrega automáticamente cuando se ejecuta en WebODM y es útil para crear la estructura de directorio correcta cuando se ejecuta en NodeODM o en la línea de comandos para importar a WebODM. Genera un archivo de referencia con información del tiempo de ejecución. Genera un polígono alrededor del área de recorte que corta la ortofoto alrededor de los bordes de las rasgos. Este polígono puede ser útil para unir mosaicos sin costura con varias ortofotos superpuestas. Ignore la distancia de muestreo del suelo (GSD). GSD limita la resolución máxima de las imágenes de salida y cambia el tamaño de las imágenes cuando es necesario, lo que resulta en un procesamiento más rápido y un menor uso de memoria. Dado que el GSD es una estimación, a veces ignorarlo puede resultar en una calidad de imagen de salida ligeramente mejor. Mantener en la malla las caras que no se ven en ninguna cámara. Número mínimo de características para extraer por imagen. Mas características llevan a mejores resultados pero una ejecución mas lenta. Número mínimo de vistas que deben reconstruir un punto para que sea válido. Utilice valores más bajos si sus imágenes tienen menos traslape. Los valores más bajos dan como resultado nubes de puntos más densas pero con más ruido. Solo se aplica si se usa OpenSfM para coincidencias densas. Número de imágenes cercanas a la comparación previa basado en los datos exif de GPS. Establezca en ``0`` para omitir la comparación previa. El parámetro Neighbors trabaja junto con el parámetro Distance, establezca ambos en 0 para no utilizar la comparación previa. OpenSFM usa ambos parámetros al mismo tiempo, Bundler usa solo uno que tiene valor, prefiriendo el parámetro Neighbors. Número de puntos por nodo octree. Para un ruido relativamente bajo, se pueden usar valores en el rango de [1-5]. Para conjuntos de datos con mas ruido, se pueden usar valores mas grandes en el rango de [15-20]. Número de pasos utilizados para rellenar áreas con huecos. Configure en ``0`` para deshabilitar el llenado de espacios. Comenzando con un radio igual a la resolución de salida, se generan N DEM diferentes con un radio progresivamente mayor utilizando el algoritmo de distancia inversa ponderada (IDW) y se fusionan. Luego, los espacios restantes se fusionan utilizando la interpolación del vecino más cercano. La profundidad del Oct-tree utilizada en la reconstrucción de la malla, aumente para obtener más vértices, los valores recomendados son 8-12. Opciones e indicadores Opciones: ``JPEG`` | ``LZW`` | ``PACKBITS`` | ``DEFLATE`` | ``LZMA`` | ``NONE`` Opciones: ``PATCH_MATCH`` | ``PATCH_MATCH_SAMPLE`` | ``BRUTE_FORCE`` Opciones: ``YES`` | ``NO`` | ``IF_NEEDED`` | ``IF_SAFER`` Opciones: ``area`` | ``gmi`` Opciones: ``auto`` | ``perspective`` | ``brown`` | ``fisheye`` | ``spherical`` Opciones: ``dataset`` | ``split`` | ``merge`` | ``opensfm`` | ``mve`` | ``odm_filterpoints`` | ``odm_meshing`` | ``mvs_texturing`` | ``odm_georeferencing`` | ``odm_dem`` | ``odm_orthophoto`` Opciones: ``gamma`` | ``none`` Opciones: ``none`` | ``camera`` | ``camera+sun`` Opciones: ``none`` | ``gauss_damping`` | ``gauss_clamping`` Opciones: ``ultra`` | ``high`` | ``medium`` | ``low`` | ``lowest`` Resolución de la ortofoto en cm / pixel. Ruta a las imágenes de entrada. Ruta al archivo que contiene los puntos de control sobre el terreno utilizados para la georreferenciación. El archivo debe tener el siguiente formato de línea:  ``easting northing height pixelrow pixelcol imagename`` Ruta a la carpeta del proyecto. Imprime mensajes adicionales en la consola. Proyección utilizada para transformar el modelo a coordenadas geográficas. Radio de superposición entre submodelos. Después de agrupar imágenes en grupos, las imágenes que están más cerca de este radio de un grupo se agregan al grupo. Esto se hace para asegurar que los submodelos vecinos se superpongan. Algoritmo de cálculo de mapas de profundidad sin procesar. ``PATCH_MATCH`` y ``PATCH_MATCH_SAMPLE`` son más rápidos, pero pueden perder algunos puntos válidos. ``BRUTE_FORCE`` lleva más tiempo pero produce reconstrucciones más densas. Ejecute un ajuste de paquete local para cada imagen agregada a la reconstrucción y un ajuste global cada 100 imágenes. Acelera la reconstrucción de conjuntos de datos muy grandes. Configure un tipo de proyección de cámara. Establecer manualmente un valor puede ayudar a mejorar la distorsión geométrica. De forma predeterminada, la aplicación intenta determinar el tipo de lente a partir de los metadatos de las imágenes. Seleccionar la calidad de extracción de rasgos. Una calidad mas alta genera mejores rasgos, pero requiere mas memoria y toma mas tiempo. Establezca la compresión que se utilizará. Tenga en cuenta que esto podría afectar gdal_translate si no sabe lo que está haciendo. Configure la calibración radiométrica a realizar en las imágenes. Al procesar imágenes multiespectrales, debe configurar esta opción para obtener valores de reflectancia (de lo contrario, obtendrá valores numéricos digitales (DN)). Configure este parámetro si quiere un geoTIFF por franjas. Mostrar mensaje de ayuda y salir. Parámetro escalar de elevación del Filtro Morfológico Simple. Parámetro de umbral de elevación del Filtro Morfológico Simple (metros). Parámetro de pendiente del filtro morfológico simple (altura sobre longitud). Parámetro de radio de la ventana de Filtro Morfológico Simple (metros). Omitir el llenado de huecos en la malla. Omitir la generación de un modelo 3D completo. Esto puede ahorrar tiempo si solamente necesita resultados 2D como ortofotos o DEMs. Omitir prueba de visibilidad geométrica. Omitir la nivelación global de costura. Útil para datos IR. Omitir el mezclado de costuras locales. El número máximo de procesos a utilizar en varios procesos. El requisito de memoria máxima es ~1 GB por hilo y una resolución de imagen de 2 megapíxeles. El conteo máximo de vértices de la malla de salida. Este valor de punto flotante especifica la importancia que se le da a la interpolación de las muestras puntuales en la formulación de la ecuación de Poisson filtrada. Los resultados de la reconstrucción de Poisson original (no filtrada) se pueden obtener estableciendo este valor en ``0``. Desactive la optimización de parámetros de cámara durante la agrupación. Desactivado de manera predeterminada, a menos que se utilice el parámetro  ``--camera``. Active el mapeo de tonos gamma o ninguno para no mapear tonos. Tipo de método de eliminación de valores atípicos fotométricos. URL a una instancia de ClusterODM para distribuir un flujo de trabajo de split-merge en varios nodos en paralelo. Utilice una malla 3D completa para calcular la ortofoto en vez de utilizar una mala 2.5D. Esta opción es un poco mas rápida y produce resultados similares en áreas planas. Utilice openSFM para calcular la nube de puntos densa, de forma alternativa. Use esta etiqueta si tiene un gcp_list.txt pero desea usar las geoetiquetas exif en su lugar. Utilice esta etiqueta para construir un DSM (modelo de superficie digital, suelo + objetos) utilizando un filtro morfológico progresivo. Verifique los parámetros ``--dem*`` para un ajuste más fino. Utilice esta etiqueta para construir un DTM (modelo digital de terreno, solo suelo) utilizando un filtro morfológico simple. Verifique los parámetros ``--dem*`` y ``--smrf*`` para un ajuste más fino. Cuando se usa ``PATCH_MATCH`` o ``PATCH_MATCH_SAMPLE``, se controla el umbral de la desviación estándar para incluir parches. Los parches con una desviación estándar mas baja se ignoran. [``camera+sun``] es experimental, aplica todas las correcciones de la [``camera``] y además compensa la radiación espectral registrada a través de un sensor de luz descendente (DLS) teniendo en cuenta el ángulo del sol. [``camera``] aplica nivel de negro, viñeteo, ganancia de gradiente de fila / compensación de exposición (si se encuentran las etiquetas EXIF apropiadas). 