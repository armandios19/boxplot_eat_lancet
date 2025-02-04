### Automatizando idr

# la siguiente función genera un df con el idr de ensanut
# y el consumo en gr de los 7 grupos de alimentos

idr_ensanut <- function(){
  carnes_vec <- carnes %>%
    filter(tamano_porcion == "E") %>%
    select(veces_al_dia, numero_porciones) %>%
    mutate(nat = numero_porciones*100) %>%
    summarise(total = sum(nat)) %>%
    pull(total)/17019

  # verduras

  vegetales_vec <- vegetales %>%
    filter(tamano_porcion == "E") %>%
    select(veces_al_dia, numero_porciones) %>%
    mutate(nat = numero_porciones*100) %>%
    summarise(total = sum(nat)) %>%
    pull(total)/21413

  # verduras almidon

  verduras_almidon_vec <- verduras_almidon %>%
    filter(tamano_porcion == "E") %>%
    select(veces_al_dia, numero_porciones) %>%
    mutate(nat = numero_porciones*100) %>%
    summarise(total = sum(nat)) %>%
    pull(total)/4685

  # lacteos

  leche_vec <- leche %>%
    filter(tamano_porcion == "E") %>%
    select(veces_al_dia, numero_porciones) %>%
    mutate(nat = numero_porciones*100) %>%
    summarise(total = sum(nat)) %>%
    pull(total)/13532

  # cereales integrales

  cereales_integrales_vec <- cereales_integrales %>%
    filter(tamano_porcion == "E") %>%
    select(veces_al_dia, numero_porciones) %>%
    mutate(nat = numero_porciones*100) %>%
    summarise(total = sum(nat)) %>%
    pull(total)/21629

  # frutas

  frutas_vec <- frutas %>%
    filter(tamano_porcion == "E") %>%
    select(veces_al_dia, numero_porciones) %>%
    mutate(nat = numero_porciones*100) %>%
    summarise(total = sum(nat)) %>%
    pull(total)/17318

  # proteina vegetal

  proteina_vegetal_vec <- proteina_vegetal %>%
    filter(tamano_porcion == "E") %>%
    select(veces_al_dia, numero_porciones) %>%
    mutate(nat = numero_porciones*100) %>%
    summarise(total = sum(nat)) %>%
    pull(total)/17804

  alimento <- c("proteina_animal_idr", "proteina_animal", "vegetales_idr",
                "vegetales", "verduras_almidon_idr", "verduras_almidon",
                "lacteos_idr", "lacteos", "cereales_integrales_idr",
                "cereales_integrales", "frutas_idr", "frutas", "proteina_vegetal_idr",
                "proteina_vegetal")

  freq <- c(42, carnes_vec, 200, vegetales_vec, 200, verduras_almidon_vec,
            250, leche_vec, 80, cereales_integrales_vec, 200, frutas_vec,
            40, proteina_vegetal_vec)

  grupo <- c("proteina_animal", "proteina_animal", "vegetales", "vegetales",
             "verduras_almidon", "verduras_almidon", "lacteos", "lacteos",
             "cereales_integrales", "cereales_integrales", "frutas", "frutas",
             "proteina_vegetal", "proteina_vegetal")

  df <- data.frame(alimento, freq, grupo)

  return(df)
}

idr_ensanut()


#############################################################
#############################################################

# la siguiente función genera un df con el idr de eat lancet
# y el consumo en gr de los 7 grupos de alimentos

idr_eat_lancet <- function(){
  carnes_vec <- carnes %>%
    filter(tamano_porcion == "E") %>%
    select(veces_al_dia, numero_porciones) %>%
    mutate(nat = numero_porciones*100) %>%
    summarise(total = sum(nat)) %>%
    pull(total)/17019

  # verduras

  vegetales_vec <- vegetales %>%
    filter(tamano_porcion == "E") %>%
    select(veces_al_dia, numero_porciones) %>%
    mutate(nat = numero_porciones*100) %>%
    summarise(total = sum(nat)) %>%
    pull(total)/21413

  # verduras almidon

  verduras_almidon_vec <- verduras_almidon %>%
    filter(tamano_porcion == "E") %>%
    select(veces_al_dia, numero_porciones) %>%
    mutate(nat = numero_porciones*100) %>%
    summarise(total = sum(nat)) %>%
    pull(total)/4685

  # lacteos

  leche_vec <- leche %>%
    filter(tamano_porcion == "E") %>%
    select(veces_al_dia, numero_porciones) %>%
    mutate(nat = numero_porciones*100) %>%
    summarise(total = sum(nat)) %>%
    pull(total)/13532

  # cereales integrales

  cereales_integrales_vec <- cereales_integrales %>%
    filter(tamano_porcion == "E") %>%
    select(veces_al_dia, numero_porciones) %>%
    mutate(nat = numero_porciones*100) %>%
    summarise(total = sum(nat)) %>%
    pull(total)/21629

  # frutas

  frutas_vec <- frutas %>%
    filter(tamano_porcion == "E") %>%
    select(veces_al_dia, numero_porciones) %>%
    mutate(nat = numero_porciones*100) %>%
    summarise(total = sum(nat)) %>%
    pull(total)/17318

  # proteina vegetal

  proteina_vegetal_vec <- proteina_vegetal %>%
    filter(tamano_porcion == "E") %>%
    select(veces_al_dia, numero_porciones) %>%
    mutate(nat = numero_porciones*100) %>%
    summarise(total = sum(nat)) %>%
    pull(total)/17804

  alimento <- c("proteina_animal_idr", "proteina_animal", "vegetales_idr",
                "vegetales", "verduras_almidon_idr", "verduras_almidon",
                "lacteos_idr", "lacteos", "cereales_integrales_idr",
                "cereales_integrales", "frutas_idr", "frutas", "proteina_vegetal_idr",
                "proteina_vegetal")

  freq <- c(84, carnes_vec, 300, vegetales_vec, 50, verduras_almidon_vec,
            250, leche_vec, 232, cereales_integrales_vec, 200, frutas_vec,
            125, proteina_vegetal_vec)

  grupo <- c("proteina_animal", "proteina_animal", "vegetales", "vegetales",
             "verduras_almidon", "verduras_almidon", "lacteos", "lacteos",
             "cereales_integrales", "cereales_integrales", "frutas", "frutas",
             "proteina_vegetal", "proteina_vegetal")

  df <- data.frame(alimento, freq, grupo)

  return(df)
}

idr_eat_lancet()

#############################################################
#############################################################

# la siguiente función genera un df con el idr de ensanut
# y el consumo en gr de los 7 grupos de alimentos por zonas (centro, sur, norte)

idr_ensanut_zone <- function(zone){

  car_lon <- nrow(carnes %>%
                      filter(tamano_porcion == "E",
                             region_nutricion == zone))

  carnes_vec <- carnes %>%
    filter(tamano_porcion == "E",
           region_nutricion == zone) %>%
    select(veces_al_dia, numero_porciones) %>%
    mutate(nat = numero_porciones*100) %>%
    summarise(total = sum(nat)) %>%
    pull(total)/car_lon

  # verduras

  ver_lon <- nrow(vegetales %>%
                    filter(tamano_porcion == "E",
                           region_nutricion == zone))

  vegetales_vec <- vegetales %>%
    filter(tamano_porcion == "E",
           region_nutricion == zone) %>%
    select(veces_al_dia, numero_porciones) %>%
    mutate(nat = numero_porciones*100) %>%
    summarise(total = sum(nat)) %>%
    pull(total)/ver_lon

  # verduras almidon

  ver_alm_lon <- nrow(verduras_almidon %>%
                        filter(tamano_porcion == "E",
                               region_nutricion == zone))

  verduras_almidon_vec <- verduras_almidon %>%
    filter(tamano_porcion == "E",
           region_nutricion == zone) %>%
    select(veces_al_dia, numero_porciones) %>%
    mutate(nat = numero_porciones*100) %>%
    summarise(total = sum(nat)) %>%
    pull(total)/ver_alm_lon

  # lacteos

  lact_lon <- nrow(leche %>%
                        filter(tamano_porcion == "E",
                               region_nutricion == zone))

  leche_vec <- leche %>%
    filter(tamano_porcion == "E",
           region_nutricion == zone) %>%
    select(veces_al_dia, numero_porciones) %>%
    mutate(nat = numero_porciones*100) %>%
    summarise(total = sum(nat)) %>%
    pull(total)/lact_lon

  # cereales integrales

  cer_lon <- nrow(cereales_integrales %>%
                     filter(tamano_porcion == "E",
                            region_nutricion == zone))

  cereales_integrales_vec <- cereales_integrales %>%
    filter(tamano_porcion == "E",
           region_nutricion == zone) %>%
    select(veces_al_dia, numero_porciones) %>%
    mutate(nat = numero_porciones*100) %>%
    summarise(total = sum(nat)) %>%
    pull(total)/cer_lon

  # frutas

  fru_lon <- nrow(frutas %>%
                    filter(tamano_porcion == "E",
                           region_nutricion == zone))

  frutas_vec <- frutas %>%
    filter(tamano_porcion == "E",
           region_nutricion == zone) %>%
    select(veces_al_dia, numero_porciones) %>%
    mutate(nat = numero_porciones*100) %>%
    summarise(total = sum(nat)) %>%
    pull(total)/fru_lon

  # proteina vegetal

  pro_veg_lon <- nrow(proteina_vegetal %>%
                    filter(tamano_porcion == "E",
                           region_nutricion == zone))

  proteina_vegetal_vec <- proteina_vegetal %>%
    filter(tamano_porcion == "E",
           region_nutricion == zone) %>%
    select(veces_al_dia, numero_porciones) %>%
    mutate(nat = numero_porciones*100) %>%
    summarise(total = sum(nat)) %>%
    pull(total)/pro_veg_lon

  alimento <- c("proteina_animal_idr", "proteina_animal", "vegetales_idr",
                "vegetales", "verduras_almidon_idr", "verduras_almidon",
                "lacteos_idr", "lacteos", "cereales_integrales_idr",
                "cereales_integrales", "frutas_idr", "frutas", "proteina_vegetal_idr",
                "proteina_vegetal")

  freq <- c(42, carnes_vec, 200, vegetales_vec, 200, verduras_almidon_vec,
            250, leche_vec, 80, cereales_integrales_vec, 200, frutas_vec,
            40, proteina_vegetal_vec)

  grupo <- c("proteina_animal", "proteina_animal", "vegetales", "vegetales",
             "verduras_almidon", "verduras_almidon", "lacteos", "lacteos",
             "cereales_integrales", "cereales_integrales", "frutas", "frutas",
             "proteina_vegetal", "proteina_vegetal")

  df <- data.frame(alimento, freq, grupo)

  return(df)
}

idr_ensanut_zone(zone = "sur")

#############################################################
#############################################################


# la siguiente función genera un df con el idr de eat lancet
# y el consumo en gr de los 7 grupos de alimentos por zonas (centro, sur, norte)

idr_eat_lancet_zone <- function(zone){

  car_lon <- nrow(carnes %>%
                    filter(tamano_porcion == "E",
                           region_nutricion == zone))

  carnes_vec <- carnes %>%
    filter(tamano_porcion == "E",
           region_nutricion == zone) %>%
    select(veces_al_dia, numero_porciones) %>%
    mutate(nat = numero_porciones*100) %>%
    summarise(total = sum(nat)) %>%
    pull(total)/car_lon

  # verduras

  ver_lon <- nrow(vegetales %>%
                    filter(tamano_porcion == "E",
                           region_nutricion == zone))

  vegetales_vec <- vegetales %>%
    filter(tamano_porcion == "E",
           region_nutricion == zone) %>%
    select(veces_al_dia, numero_porciones) %>%
    mutate(nat = numero_porciones*100) %>%
    summarise(total = sum(nat)) %>%
    pull(total)/ver_lon

  # verduras almidon

  ver_alm_lon <- nrow(verduras_almidon %>%
                        filter(tamano_porcion == "E",
                               region_nutricion == zone))

  verduras_almidon_vec <- verduras_almidon %>%
    filter(tamano_porcion == "E",
           region_nutricion == zone) %>%
    select(veces_al_dia, numero_porciones) %>%
    mutate(nat = numero_porciones*100) %>%
    summarise(total = sum(nat)) %>%
    pull(total)/ver_alm_lon

  # lacteos

  lact_lon <- nrow(leche %>%
                     filter(tamano_porcion == "E",
                            region_nutricion == zone))

  leche_vec <- leche %>%
    filter(tamano_porcion == "E",
           region_nutricion == zone) %>%
    select(veces_al_dia, numero_porciones) %>%
    mutate(nat = numero_porciones*100) %>%
    summarise(total = sum(nat)) %>%
    pull(total)/lact_lon

  # cereales integrales

  cer_lon <- nrow(cereales_integrales %>%
                    filter(tamano_porcion == "E",
                           region_nutricion == zone))

  cereales_integrales_vec <- cereales_integrales %>%
    filter(tamano_porcion == "E",
           region_nutricion == zone) %>%
    select(veces_al_dia, numero_porciones) %>%
    mutate(nat = numero_porciones*100) %>%
    summarise(total = sum(nat)) %>%
    pull(total)/cer_lon

  # frutas

  fru_lon <- nrow(frutas %>%
                    filter(tamano_porcion == "E",
                           region_nutricion == zone))

  frutas_vec <- frutas %>%
    filter(tamano_porcion == "E",
           region_nutricion == zone) %>%
    select(veces_al_dia, numero_porciones) %>%
    mutate(nat = numero_porciones*100) %>%
    summarise(total = sum(nat)) %>%
    pull(total)/fru_lon

  # proteina vegetal

  pro_veg_lon <- nrow(proteina_vegetal %>%
                        filter(tamano_porcion == "E",
                               region_nutricion == zone))

  proteina_vegetal_vec <- proteina_vegetal %>%
    filter(tamano_porcion == "E",
           region_nutricion == zone) %>%
    select(veces_al_dia, numero_porciones) %>%
    mutate(nat = numero_porciones*100) %>%
    summarise(total = sum(nat)) %>%
    pull(total)/pro_veg_lon

  alimento <- c("proteina_animal_idr", "proteina_animal", "vegetales_idr",
                "vegetales", "verduras_almidon_idr", "verduras_almidon",
                "lacteos_idr", "lacteos", "cereales_integrales_idr",
                "cereales_integrales", "frutas_idr", "frutas", "proteina_vegetal_idr",
                "proteina_vegetal")

  freq <- c(84, carnes_vec, 300, vegetales_vec, 50, verduras_almidon_vec,
            250, leche_vec, 232, cereales_integrales_vec, 200, frutas_vec,
            125, proteina_vegetal_vec)

  grupo <- c("proteina_animal", "proteina_animal", "vegetales", "vegetales",
             "verduras_almidon", "verduras_almidon", "lacteos", "lacteos",
             "cereales_integrales", "cereales_integrales", "frutas", "frutas",
             "proteina_vegetal", "proteina_vegetal")

  df <- data.frame(alimento, freq, grupo)

  return(df)
}

idr_eat_lancet_zone(zone = "norte")
