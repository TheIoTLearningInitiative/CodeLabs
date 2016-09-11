from shade import *

simple_logging(debug=True)
conn = openstack_cloud(cloud='internap-trainer')

images = conn.list_images()
for image in images:
    print image

flavors =  conn.list_flavors()
for flavor in flavors:
    print(flavor)
