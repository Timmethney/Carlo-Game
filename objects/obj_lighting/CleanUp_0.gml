// Free the surface memory to prevent leaks
if (surface_exists(surf)) {
    surface_free(surf);
}