export interface Category {
  id: string;
  name: string;
  slug: string;
  icon_name: string;
  description: string;
  display_order: number;
  created_at: string;
}

export interface Area {
  id: string;
  name: string;
  slug: string;
  description: string;
  latitude: number;
  longitude: number;
  highlights: string[];
  image_url: string;
  created_at: string;
}

export interface SocialLinks {
  linkedin?: string;
  twitter?: string;
  facebook?: string;
  instagram?: string;
  youtube?: string;
  tiktok?: string;
}

export interface OpeningHours {
  monday?: string;
  tuesday?: string;
  wednesday?: string;
  thursday?: string;
  friday?: string;
  saturday?: string;
  sunday?: string;
}

export type LocationConfidence = 'exact' | 'approximate' | 'area';

export interface Business {
  id: string;
  name: string;
  slug: string;
  description: string;
  category_id: string;
  area_id: string;
  phone: string;
  email: string;
  website: string;
  address: string;
  latitude: number;
  longitude: number;
  is_placeholder: boolean;
  rating: number | null;
  notes: string | null;
  social_links: SocialLinks;
  image_url: string;
  images: string[];
  opening_hours: OpeningHours;
  location_confidence: LocationConfidence;
  needs_geocoding: boolean;
  created_at: string;
}

export interface BusinessSuggestion {
  id?: string;
  business_name: string;
  category: string;
  area: string;
  address: string;
  phone: string;
  website: string;
  description: string;
  submitter_name: string;
  submitter_email: string;
  status?: 'pending' | 'approved' | 'rejected';
  created_at?: string;
}

export interface BusinessWithRelations extends Business {
  categories: Category;
  areas: Area;
}

export interface FAQ {
  id: string;
  page_type: 'area' | 'category' | 'guide';
  page_slug: string;
  question: string;
  answer: string;
  display_order: number;
  created_at: string;
}

export interface Guide {
  id: string;
  title: string;
  slug: string;
  description: string;
  content: string;
  area_slug: string | null;
  category_slug: string | null;
  meta_title: string;
  meta_description: string;
  image_url: string;
  published: boolean;
  created_at: string;
  updated_at: string;
}

export interface EarlyBirdSignup {
  id: string;
  signup_type: 'consumer' | 'business';
  email: string;
  full_name: string;
  nationality: string;
  property_type: string;
  business_name: string;
  business_category: string;
  business_size: string;
  created_at: string;
}

export interface UserProfile {
  id: string;
  display_name: string;
  avatar_url: string | null;
  created_at: string;
}

export interface Review {
  id: string;
  business_id: string;
  user_id: string;
  rating: number;
  title: string;
  content: string;
  created_at: string;
  updated_at: string;
}

export interface ReviewWithProfile extends Review {
  user_profiles: UserProfile;
}
