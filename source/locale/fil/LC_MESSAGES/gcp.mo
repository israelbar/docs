��    &      L              |  �   }  N   �  	  M  9   W  	   �  u   �                0     B  |   X  �   �  �  �    1  �   5	  	   �	  �  �	  %   ~  
   �  j   �  �     m   �  B     �   ]  M   4  .  �  n   �  %      �   F  m   �  �   J  f   �     Y  >   i  ;   �  0   �  �      �  �   �  K   ]  �   �  R   �     �  �   �     �     �     �     �  �   �  �   h  �  L    $  �   6  	   �  �    0   �   
   !  �   !  �   �!  �   /"  E   �"  �   �"  C   �#    $  q   :%  (   �%  �   �%  \   m&  �   �&  f   �'     �'  Q   	(  ;   [(  0   �(  �  �(   A Ground Control Point (GCP) is a position measurement made on the ground, typically using a high precision GPS. (Toffanin 2019) Create a CSV file that includes the gcp name, northing, easting and elevation. Create a GCP list that only includes gcp name (this is the label that will be seen in the GCP interface), x, y, and z, with a header with a proj4 string of your GCPs (make sure they are in a planar coordinate system, such as UTM. It should look something like this: Elevation values can be set to "NaN" to indicate no value Example:: For good results your file should have a minimum of 15 lines after the header (5 points with 3 images to each point). GCP Editor Pro GCP file format GCP file format:: Ground Control Points Ground control points are useful for correcting distortions in the data and referencing the data to know coordinate systems. Ground control points can be set existing structures like pavement corners, lines on a parking lot or contrasting color floor tiles, otherwise can be set using targets placed on the ground. If you supply a GCP file called ``gcp_list.txt`` then ODM will automatically detect it. If it has another name you can specify using ``--gcp <path>``. If you have a gcp file and want to do georeferencing with exif instead, then you can specify ``--use-exif``. If you have high precision GPS measurements in your images (RTK) and want to use that information along with a gcp file, you can specify ``--force-gps``. In order to ensure each GCP are found in at least 5 images, separate the points 10 to 30 meters from the perimeter of the project. This distance is dependent of the overlapping, so increasing overlapping should reduce the required distance from the perimeter. Keep ground control points visible for all camera locations. Consider the expected ground sampling distance, illumination, vegetation, buildings and all the existing obstacles. POSM GCPi Procure an evenly horizontal distribution of the GCPs within the project, covering high and low elevations. A minimum of 5 GCP works for most of the jobs, and for larger projects 8 – 10 are sufficient. Locate some points near the corners and others in the center, considering that GCP spacing should be larger than the image footprint so that you can’t see more than one GCP in a single image. Recommended practices for GCP setting References Sharp corners are good picks for GCPs. You should also place/find the GCPs evenly around your survey area. Subsequent lines are the X, Y & Z coordinates, your associated pixels, the image filename and optional extra fields, separated by tabs or spaces: Targets can be purchased or build with an ample variety of materials ranging from bucket lids to floor tiles. The 7th column (optional) typically contains the label of the GCP. The POSM GCPi is loaded by default on WebODM. An example is available at `the WebODM Demo <http://demo.webodm.org/plugins/posm-gcpi/>`_. To use this with known ground control XYZ values, one would do the following: The ``gcp_list.txt`` file must be created in the base of your project folder. The first line should contain the name of the projection used for the geo coordinates. This can be specified either as a PROJ string (e.g. ``+proj=utm +zone=10 +ellps=WGS84 +datum=WGS84 +units=m +no_defs``), EPSG code (e.g. ``EPSG:4326``) or as a ``WGS84 UTM <zone>[N|S]`` value (eg. ``WGS84 UTM 16N``) The following screen will display a map from where to select the GCPs to tag and import the respective images. The format of the GCP file is simple. Then import the CSV from the main screen and type ``+proj=utm +zone=37 +south +ellps=WGS84 +datum=WGS84 +units=m +no_defs`` in the ``EPSG/PROJ`` box. Then one can load this GCP list into the interface, load the images, and place each of the GCPs in the image. This app needs to be installed separately or can be loaded as a WebODM plugin from `https://github.com/uav4geo/GCPEditorPro <https://github.com/uav4geo/GCPEditorPro>`_ Toffanin, Piero. `Open Drone Map: The Missing Guide. <https://odmbook.com/>`_ MasseranoLabs LLC, 2019. User Interfaces You can use one of two user interfaces for creating GCP files: `GCP Editor Pro <https://github.com/uav4geo/GCPEditorPro>`_ `POSM GCPi <https://github.com/posm/posm-gcpi>`_ `This post has some information about placing Ground Control Targets before a flight <http://diydrones.com/profiles/blogs/ground-control-points-gcps-for-aerial-photography>`_, but if you already have images, you can find your own points in the images post facto. It's important that you find high-contrast objects that are found in **at least** 3 photos, and that you find a minimum of 5 objects. Project-Id-Version: OpenDroneMap 2.0.0
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2020-12-15 09:17-0500
PO-Revision-Date: 2020-07-21 21:10+0000
Last-Translator: Ma. Carmina Filamor-Badajos <mina.filamor@yahoo.com>, 2020
Language: fil
Language-Team: Filipino (https://www.transifex.com/americanredcross/teams/111882/fil/)
Plural-Forms: nplurals=2; plural=(n == 1 || n==2 || n==3) || (n % 10 != 4 || n % 10 != 6 || n % 10 != 9)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
 Ang Ground Control Point (GCP) ay isang pagsukat sa posisyon na ginawa sa lupa, karaniwang ginagamitan ng isang mataas na katumpakan na GPS. (Toffanin 2019) Gumawa ng CSV file na kasama ang GCP name, northing, easting and elevation. Gumawa ng GCP na listahan na may kasamang gcp names (ito ang label na makikita sa GCP interface), x, y, and z, na may header na proj4 string sa GCPs (siguraduhin na may planar coordinate system tulad ng UTM. Ganito ang magiging itsura dapat: Ang elevation values ay mase-set sa "NaN" para ma-indicate na ito ay walang value. Halimbawa:: Para sa mas magandang resulta, ang iyong file ay dapat na magkaroon ng minimum na 15 na linya pagkatapos ng header (5 points na may 3 imahe kada point). GCP Editor Pro GCP file format GCP file format:: Ground Control Points Ang mga GCP ay kapaki-pakinabang para sa pagwawasto ng mga pagbaluktot sa datos at pagtukoy sa datos upang malaman ang mga coordinate system. Ang mga GCP ay maaaring itakda sa mga istraktura tulad ng mga sulok ng simento, mga linya sa isang paradahan o mga tile sa sahig na nagsasalitan ang kulay, kung hindi man ay maitatakda gamit ang mga target na nakalagay sa lupa. Kung ikaw ay nagsupply ng GCP file na tinatawag na  ang ODM ay automatic na madedetect ito. Kung ito naman ay may ibang pangalan, maaari mong maspecify ito gamit ang ``--gcp 1``. Kung ikaw ay may gcp file at nais gumawa ng georeferencing sa exif, pwede mong i-specify ang ``--use-exif``. Kung ikaw naman ay may high precision GPS na sukat sa iyong imahe (RTK) at gustong gamiting ang impormasyon na ito kasama ng gcp file, pwede mo itong i-specify bilang ``--force-gps``. Para masiguro na lahat ng GCP ay makikita sa 5 na imahe, ihiwalay ang points 10 to 30 meters mula sa perimeter ng proyekto. Ang distansiya na ito ay dependent sa overlapping, kung kaya ang pagdagdag ng overlapping ay makakabawas sa required na distansiya mula sa perimeter. Panatilihing nakikita ang mga GCP para sa lahat ng mga lokasyon ng camera. Isaalang-alang ang inaasahang  ng lupa, pag-iilaw, halaman,ground sampling distance, mga gusali at lahat ng mga hadlang. POSM GCPi Kumuha ng pantay-pantay na distribusyon ng GCPs sa loob ng proyekto, na sinasakupan ang mataas at mababa na elevation. Ang pinakamaliit na value na pwede ay 5 GCP para sa mga karaniwan na trabaho. Para naman sa malalaking proyekto, ang 8-10 ay sapat na. I-locate ang mga points na malapit sa mga kanto at ang iba naman ay sa gitna habang isinasangalang-alang ang GCP na dapat ay mas malalaki kesa sa image footprint para mas makakita ng mahigit sa isang GCP sa isang imahe. Mga nirerekumendang gawi para sa paglagay ng GCP References Ang sharp corners ay magandang option para sa GCPs. DApat ilagay/hanapin ang GCPs ng pantay pantay sa paligid ng isu-survey na area. Ang mga subsequent lines na  X, Y & Z coordinates, ang associated pixels, ang image filename at optional extra fields, hiwalay by tabs o space. Maaaring mabili o gumawa ang mga target gamit ang samut-saring mga materyales tuland ng mga takip ng timba at ng mga tile sa sahig. Ang ika-7 na column (optional) ay madalas naglalaman ng label ng GCP. Ang POSM GCPi ay loaded by default sa WebODM. Isang halimbawa dito ay mahahanap sa `the WebODM Demo <http://demo.webodm.org/plugins/posm-gcpi/>`_. Para gamitin ito sa ground control XYZ values, dapat gawin ang mga sumusunod: Ang ``gcp_list.txt`` file ay dapat gawin sa base ng project folder. Ang projection para sa geo coordinates ay dapat na mapunta sa unang linya. Eto ay maaaring matukoy bilang PROJ string (e.g. ``+proj=utm +zone=10 +ellps=WGS84 +datum=WGS84 +units=m +no_defs``), EPSG code (e.g. ``EPSG:4326``) o bilang ``WGS84 UTM 1[N|S]`` value (eg. ``WGS84 UTM 16N``) Ang susunod na screen ay magdi-display ng map kung saan pipiliin ang GCPs para ma-tag at ma-import ang mga imahe. Ang format ng GCP file ay simple lamang. I-import ang CSV mula sa main screen at i-type ang ``+proj=utm +zone=37 +south +ellps=WGS84 +datum=WGS84 +units=m +no_defs`` mula sa ``EPSG/PROJ`` box. Pwedeng i-load ang GCP list sa interface, i-load ang imahe, at ilagay ang mga GPCs sa imahe. Ang aplikasyon na ito ay dapat i-install ng hiwalay o di kaya naman ay pwedeng i-load bilang WebODM plugin mula sa `https://github.com/uav4geo/GCPEditorPro <https://github.com/uav4geo/GCPEditorPro>`_ Toffanin, Piero. `Open Drone Map: The Missing Guide. <https://odmbook.com/>`_ MasseranoLabs LLC, 2019. User Interfaces Maaaring gumamit ng isa or dalawang user interfaces para sa paggawa ng GCP files: `GCP Editor Pro <https://github.com/uav4geo/GCPEditorPro>`_ `POSM GCPi <https://github.com/posm/posm-gcpi>`_ `Ang post na ito ay may impormasyon tungkol sa paglagay ng Ground Control Targets bago ang paglipad <http://diydrones.com/profiles/blogs/ground-control-points-gcps-for-aerial-photography>`_, ngutin kung ikaw ay meroon ng mga imahe, makikita ang mga points sa imahe post facto. Importante na humanap ng high-contrast objects na makikita sa **at least** 3 litrato, at makakakita ng minimum na 5 objoects. 