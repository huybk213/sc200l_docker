Docker image for building SC200L Android 10

Run docker compose:

    - sudo docker-compose -f docker-compose.yml up -d
    - sudo docker attach CONTAINER_ID
    - cd sc200l
    - ./compile_sl8541e_3in1_w21.33.6.sh all eng
