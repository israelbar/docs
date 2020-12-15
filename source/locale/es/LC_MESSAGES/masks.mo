��          T               �   �   �      [    k  �   �     k     }  �  �  �   c     W  U  j    �     �     �   For example, ``DJI_0018.JPG`` can have a mask by creating a ``DJI_0018_mask.JPG`` file and include that in the list of images. You can use ``.JPG``, ``.PNG``, ``.BMP`` and ``.TIF`` formats for image masks. Name your file: Starting from ODM ``2.0`` people can supply image masks to inform the software to skip reconstruction over certain areas. This is useful for cases where the sky was accidentally included in the input photos from oblique shots, or simply to limit the reconstruction of a single subject. To add a mask, simply create a new black and white image of the same dimension as the target image you want to mask (you can use a program such as GIMP to do this). Color in black the areas to exclude from the reconstruction. Using Image Masks ``<filename>_mask.JPG`` Project-Id-Version: OpenDroneMap 2.0.0
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2020-12-15 09:17-0500
PO-Revision-Date: 2020-10-05 17:13+0000
Last-Translator: Israel Barragán <israelbar@gmail.com>, 2020
Language: es
Language-Team: Spanish (https://www.transifex.com/americanredcross/teams/111882/es/)
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
 Por ejemplo, `` DJI_0018.JPG '' puede tener una máscara creando un archivo `` DJI_0018_mask.JPG '' e incluirlo en la lista de imágenes. Puede utilizar los formatos `` .JPG '', `` .PNG '', `` .BMP '' y `` .TIF '' para las máscaras de imagen. Nombre su archivo: A partir de ODM `` 2.0 '', las personas pueden proporcionar máscaras de imagen para informar al software de que omita la reconstrucción en ciertas áreas. Esto es útil para los casos en los que el cielo se incluyó accidentalmente en las fotos de entrada de tomas oblicuas, o simplemente para limitar la reconstrucción de un solo sujeto. Para agregar una máscara, simplemente cree una nueva imagen en blanco y negro de la misma dimensión que la imagen de destino que desea enmascarar (puede usar un programa como GIMP para hacer esto). Colorea de negro las zonas a excluir de la reconstrucción. Usar máscaras de imagen ``<filename>_mask.JPG`` 