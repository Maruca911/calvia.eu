import { useEffect } from 'react';
import type { BusinessWithRelations } from '../../types/database';

interface Props {
  business: BusinessWithRelations;
}

export default function BusinessProfileSchema({ business }: Props) {
  useEffect(() => {
    document.title = `${business.name} | Calvia.app - Mallorca Business Directory`;

    const metaDesc = document.querySelector('meta[name="description"]');
    const desc = business.description
      ? `${business.name} in ${business.areas?.name || 'Calvia'}, Mallorca. ${business.description.slice(0, 120)}`
      : `${business.name} - Find contact details, location, and reviews on Calvia.app, Mallorca's local business directory.`;

    if (metaDesc) metaDesc.setAttribute('content', desc);

    const ogTitle = document.querySelector('meta[property="og:title"]');
    if (ogTitle) ogTitle.setAttribute('content', `${business.name} | Calvia.app`);

    const ogDesc = document.querySelector('meta[property="og:description"]');
    if (ogDesc) ogDesc.setAttribute('content', desc);

    return () => {
      document.title = "Calvia.app - The Modern Yellow Pages of Mallorca's Southwest";
      if (metaDesc) metaDesc.setAttribute('content', "Calvia.app - The Modern Yellow Pages of Mallorca's Southwest. Find trusted local businesses, explore villages, and connect with the Calvia community.");
    };
  }, [business]);

  const schema = {
    '@context': 'https://schema.org',
    '@type': 'LocalBusiness',
    name: business.name,
    description: business.description || undefined,
    telephone: business.phone || undefined,
    email: business.email || undefined,
    url: business.website
      ? (business.website.startsWith('http') ? business.website : `https://${business.website}`)
      : undefined,
    address: business.address
      ? {
          '@type': 'PostalAddress',
          streetAddress: business.address,
          addressLocality: business.areas?.name || 'Calvia',
          addressRegion: 'Balearic Islands',
          addressCountry: 'ES',
        }
      : undefined,
    geo: business.latitude && business.longitude
      ? {
          '@type': 'GeoCoordinates',
          latitude: business.latitude,
          longitude: business.longitude,
        }
      : undefined,
    aggregateRating: business.rating
      ? {
          '@type': 'AggregateRating',
          ratingValue: business.rating,
          bestRating: 5,
        }
      : undefined,
    areaServed: {
      '@type': 'City',
      name: business.areas?.name || 'Calvia',
    },
    isPartOf: {
      '@type': 'WebSite',
      name: 'Calvia.app',
      url: 'https://calvia.app',
    },
  };

  return (
    <script
      type="application/ld+json"
      dangerouslySetInnerHTML={{ __html: JSON.stringify(schema) }}
    />
  );
}
