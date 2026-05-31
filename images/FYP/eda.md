# Database Tables and Relationships

This document outlines the database schema (tables, columns, and relationships) for the Final Year Project Server. The data is modeled using SQLAlchemy ORM for an SQLite database.

## 1. `users`
Stores all registered users and their authentication state.
* `id`: Integer (Primary Key)
* `role`: String ("operator" or "customer")
* `full_name`: String
* `phone_number`: String (Unique)
* `email`: String (Unique)
* `is_active`: Boolean
* `is_verified`: Boolean
* `otp_code`: String
* `otp_expires_at`: DateTime
* `otp_attempts`: Integer
* `otp_last_sent_at`: DateTime
* `created_at`: DateTime
* `updated_at`: DateTime

## 2. `customer_profiles`
Stores additional onboarding details for users with the "customer" role.
* `id`: Integer (Primary Key)
* `user_id`: Integer, Foreign Key (`users.id`) -> **One-to-One relationship** with `users`
* `full_name`: String
* `phone_number`: String

## 3. `operator_profiles`
Stores company and operations details for users with the "operator" role.
* `id`: Integer (Primary Key)
* `user_id`: Integer, Foreign Key (`users.id`) -> **One-to-One relationship** with `users`
* `full_name`: String
* `phone_number`: String
* `email`: String
* `company_name`: String
* `company_registration_number`: String
* `company_address`: String
* `vehicle_count`: Integer
* `trip_routes`: String
* `route_charges`: String
* `delivers_parcels`: Boolean

## 4. `operator_routes`
Defines operational routes established by an operator.
* `id`: Integer (Primary Key)
* `operator_profile_id`: Integer, Foreign Key (`operator_profiles.id`) -> **Many-to-One relationship** with `operator_profiles`
* `route_code`: String
* `route_name`: String
* `origin`: String
* `destination`: String
* `via`: String
* `base_fare`: Integer
* `estimated_duration_minutes`: Integer
* `is_active`: Boolean
* `created_at`: DateTime
* `updated_at`: DateTime

## 5. `fleet_vehicles`
Inventory of physical vehicles owned by operators used to determine booking seat capacity.
* `id`: Integer (Primary Key)
* `operator_profile_id`: Integer, Foreign Key (`operator_profiles.id`) -> **Many-to-One relationship** with `operator_profiles`
* `operator_route_id`: Integer, Foreign Key (`operator_routes.id`) -> **Many-to-One relationship** with `operator_routes` (Optional Default Route)
* `vehicle_code`: String
* `vehicle_type`: String
* `plate_number`: String
* `seat_capacity`: Integer
* `is_active`: Boolean
* `created_at`: DateTime
* `updated_at`: DateTime

## 6. `bookings`
Stores seat bookings made by customers.
* `id`: Integer (Primary Key)
* `customer_id`: Integer, Foreign Key (`users.id`) -> **Many-to-One relationship** with `users`
* `operator_profile_id`: Integer, Foreign Key (`operator_profiles.id`) -> **Many-to-One relationship** with `operator_profiles`
* `operator_route_id`: Integer, Foreign Key (`operator_routes.id`) -> **Many-to-One relationship** with `operator_routes`
* `fleet_vehicle_id`: Integer, Foreign Key (`fleet_vehicles.id`) -> **Many-to-One relationship** with `fleet_vehicles`
* `route_name`: String
* `pickup_point`: String
* `dropoff_point`: String
* `travel_date`: DateTime
* `seat_count`: Integer
* `quoted_amount`: Integer
* `payment_method`: String
* `status`: String (pending, confirmed, in_progress, completed, cancelled)
* `notes`: Text
* `created_at`: DateTime
* `updated_at`: DateTime

## 7. `parcels`
Stores details of parcel deliveries requested by clients.
* `id`: Integer (Primary Key)
* `customer_id`: Integer, Foreign Key (`users.id`) -> **Many-to-One relationship** with `users`
* `operator_profile_id`: Integer, Foreign Key (`operator_profiles.id`) -> **Many-to-One relationship** with `operator_profiles`
* `operator_route_id`: Integer, Foreign Key (`operator_routes.id`) -> **Many-to-One relationship** with `operator_routes`
* `tracking_number`: String
* `origin`: String
* `destination`: String
* `recipient_name`: String
* `recipient_phone`: String
* `description`: Text
* `weight_kg`: Float
* `declared_value`: Integer
* `delivery_speed`: String
* `quoted_amount`: Integer
* `status`: String (booked -> picked_up -> in_transit -> delivered, or cancelled)
* `booked_at`: DateTime
* `picked_up_at`: DateTime
* `in_transit_at`: DateTime
* `delivered_at`: DateTime
* `cancelled_at`: DateTime
* `created_at`: DateTime
* `updated_at`: DateTime
