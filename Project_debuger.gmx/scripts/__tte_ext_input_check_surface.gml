/// Check if surface exists
if( !surface_exists( tte_surface ) ) {
    tte_surface = surface_create( width - padding_left - padding_right, height - padding_top - padding_bottom );
    update = true;
}
