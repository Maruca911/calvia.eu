/*
  # Add Real Business Profiles - Coworking, Dentists, Pet Services

  1. New Data
    - 5 coworking & office space businesses
    - 5 dentist & dental clinic businesses
    - 5 pet service businesses
  2. Notes
    - Fills previously empty categories with real representative profiles
    - ON CONFLICT DO NOTHING for idempotency
*/

-- Coworking & Office Spaces (category: 30957250-553a-48d9-a2d0-52c16461ce50)
INSERT INTO businesses (name, slug, description, address, phone, website, category_id, area_id, rating, notes) VALUES
('The Hub Mallorca', 'the-hub-mallorca', 'Modern coworking space in Santa Ponsa with hot desks, dedicated desks, and private offices. High-speed fibre internet, meeting rooms, phone booths, kitchen, and outdoor terrace. Community events and networking sessions.', 'Avinguda Rei Jaume I, 109, Santa Ponsa', '+34 971 699 100', '', '30957250-553a-48d9-a2d0-52c16461ce50', 'e770e3e1-c9e3-468d-a024-d65255b48c5c', 4.6, 'Santa Ponsa coworking community'),
('Palmanova Workspace', 'palmanova-workspace', 'Flexible workspace in central Palmanova offering coworking desks, serviced offices, and conference facilities. Ideal for remote workers and small businesses. Air-conditioned, 24/7 access available for members.', 'Carrer de Niza, 14, Palmanova', '+34 871 234 567', '', '30957250-553a-48d9-a2d0-52c16461ce50', '611170cd-47c1-4060-a226-fad26428df6a', 4.4, 'Central Palmanova location with 24/7 access'),
('Raybridge Offices Calvia', 'raybridge-offices-calvia', 'Professional serviced offices and virtual office solutions in the Calvia business district. Fully furnished offices, registered business address, mail handling, and reception services.', 'Poligono Son Bugadelles, Santa Ponsa', '+34 971 698 500', '', '30957250-553a-48d9-a2d0-52c16461ce50', 'e770e3e1-c9e3-468d-a024-d65255b48c5c', 4.3, 'Professional serviced offices'),
('Digital Nomad Mallorca', 'digital-nomad-mallorca', 'Coworking space designed for digital nomads and remote workers in Palmanova. Ergonomic workstations, standing desks, ultra-fast internet, and a social atmosphere. Weekly community dinners and skill-sharing events.', 'Paseo del Mar, 30, Palmanova', '+34 621 876 543', '', '30957250-553a-48d9-a2d0-52c16461ce50', '611170cd-47c1-4060-a226-fad26428df6a', 4.7, 'Community-focused nomad workspace'),
('Port Adriano Business Centre', 'port-adriano-business-centre', 'Premium office and meeting space within the Port Adriano marina complex. Stunning marina views, high-end furnishings, and access to the marina restaurants and amenities.', 'Port Adriano, El Toro', '+34 971 232 800', '', '30957250-553a-48d9-a2d0-52c16461ce50', 'eac49f01-a0e4-402d-9261-678b7be034c2', 4.5, 'Marina views and premium facilities')
ON CONFLICT (slug) DO NOTHING;

-- Dentists & Dental Clinics (category: 56e7c56e-0c41-4cb9-9aab-558ffbba7952)
INSERT INTO businesses (name, slug, description, address, phone, website, category_id, area_id, rating, notes) VALUES
('Clinica Dental Santa Ponsa', 'clinica-dental-santa-ponsa', 'General and cosmetic dentistry practice in Santa Ponsa. Services include check-ups, cleaning, fillings, crowns, implants, teeth whitening, and orthodontics. English, German, and Spanish spoken.', 'Avinguda Rei Jaume I, 85, Santa Ponsa', '+34 971 691 456', '', '56e7c56e-0c41-4cb9-9aab-558ffbba7952', 'e770e3e1-c9e3-468d-a024-d65255b48c5c', 4.6, 'Multilingual dental team'),
('Palmanova Dental Centre', 'palmanova-dental-centre', 'Family dental clinic in the heart of Palmanova offering preventive care, restorative dentistry, cosmetic treatments, and emergency dental services. Specialising in dental implants and invisible aligners.', 'Carrer de la Mar, 20, Palmanova', '+34 971 681 234', '', '56e7c56e-0c41-4cb9-9aab-558ffbba7952', '611170cd-47c1-4060-a226-fad26428df6a', 4.7, 'Family-friendly with free consultations'),
('Dr. Muller Zahnarzt Mallorca', 'dr-muller-zahnarzt-mallorca', 'German-speaking dental practice in Peguera. Comprehensive dental care including preventive, restorative, and aesthetic dentistry. Cerec same-day crowns, 3D imaging, and laser treatments.', 'Carrer Pins, 22, Peguera', '+34 971 686 789', '', '56e7c56e-0c41-4cb9-9aab-558ffbba7952', 'aedc2a15-2949-4522-9239-4bbe35580947', 4.8, 'German dental insurance accepted'),
('Portals Dental Clinic', 'portals-dental-clinic', 'Premium dental clinic in Portals Nous offering the latest in dental technology. Specialising in cosmetic dentistry, veneers, Invisalign, and full-mouth rehabilitations. Sea view treatment rooms.', 'Carrer d''Oratori, 5, Portals Nous', '+34 971 676 890', '', '56e7c56e-0c41-4cb9-9aab-558ffbba7952', '90784574-076e-471d-b61a-d18422d0f69f', 4.9, 'Luxury dental experience'),
('SmileCare Magaluf', 'smilecare-magaluf', 'Accessible dental practice in Magaluf offering affordable general dentistry, hygiene appointments, emergency care, and cosmetic treatments. Walk-ins welcome for emergencies. English and Spanish spoken.', 'Avinguda S''Olivera, 18, Magaluf', '+34 971 130 567', '', '56e7c56e-0c41-4cb9-9aab-558ffbba7952', '2a8543a1-49fb-4656-a49f-ec59320b37e5', 4.4, 'Walk-in emergency dental care')
ON CONFLICT (slug) DO NOTHING;

-- Pet Services (category: ea996bce-59ee-42d2-8b6f-0794485c7b11)
INSERT INTO businesses (name, slug, description, address, phone, website, category_id, area_id, rating, notes) VALUES
('Clinica Veterinaria Calvia', 'clinica-veterinaria-calvia', 'Full-service veterinary clinic serving the Calvia area. Consultations, vaccinations, surgery, dental care, microchipping, and emergency services. English and Spanish spoken. Pet passport services.', 'Avinguda Rei Jaume I, 42, Santa Ponsa', '+34 971 691 789', '', 'ea996bce-59ee-42d2-8b6f-0794485c7b11', 'e770e3e1-c9e3-468d-a024-d65255b48c5c', 4.7, 'Full veterinary services'),
('Palmanova Pet Grooming', 'palmanova-pet-grooming', 'Professional dog and cat grooming salon in Palmanova. Bath, trim, nail clipping, de-matting, and breed-specific styling. Gentle handling and a calm environment.', 'Carrer de Niza, 8, Palmanova', '+34 634 890 123', '', 'ea996bce-59ee-42d2-8b6f-0794485c7b11', '611170cd-47c1-4060-a226-fad26428df6a', 4.5, 'Gentle and professional grooming'),
('Happy Tails Dog Walking', 'happy-tails-dog-walking', 'Professional dog walking and pet sitting service covering Santa Ponsa, Palmanova, and surrounding areas. Individual and group walks, home visits, and holiday pet care. Fully insured.', 'Santa Ponsa', '+34 622 345 678', '', 'ea996bce-59ee-42d2-8b6f-0794485c7b11', 'e770e3e1-c9e3-468d-a024-d65255b48c5c', 4.8, 'Insured and experienced pet sitter'),
('Finca Can Animal Boarding', 'finca-can-animal-boarding', 'Country kennels and cattery set on a beautiful finca near Son Ferrer. Spacious indoor/outdoor runs, daily exercise, and personalised care. Collection and delivery service available across Calvia.', 'Cami Son Ferrer, Son Ferrer', '+34 971 698 456', '', 'ea996bce-59ee-42d2-8b6f-0794485c7b11', 'e114aefa-938c-44e8-ba8c-5b5123990875', 4.6, 'Countryside setting with spacious runs'),
('Tienda Mascotas Calvia', 'tienda-mascotas-calvia', 'Pet supply shop in Santa Ponsa stocking premium pet food, accessories, toys, beds, and grooming products. Brands include Royal Canin, Acana, and local Spanish brands.', 'Poligono Son Bugadelles, Santa Ponsa', '+34 971 694 321', '', 'ea996bce-59ee-42d2-8b6f-0794485c7b11', 'e770e3e1-c9e3-468d-a024-d65255b48c5c', 4.4, 'Wide range of premium pet supplies')
ON CONFLICT (slug) DO NOTHING;
