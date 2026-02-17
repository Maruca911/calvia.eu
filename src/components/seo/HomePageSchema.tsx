export default function HomePageSchema() {
  const website = {
    '@context': 'https://schema.org',
    '@type': 'WebSite',
    name: 'Calvia.app',
    alternateName: 'Calvia App - Mallorca Business Directory',
    url: 'https://calvia.app',
    description: "The Modern Yellow Pages of Mallorca's Southwest. Find trusted local businesses across 23 villages in Calvia.",
    potentialAction: {
      '@type': 'SearchAction',
      target: {
        '@type': 'EntryPoint',
        urlTemplate: 'https://calvia.app/businesses?q={search_term_string}',
      },
      'query-input': 'required name=search_term_string',
    },
  };

  const org = {
    '@context': 'https://schema.org',
    '@type': 'Organization',
    name: 'Calvia.app',
    url: 'https://calvia.app',
    description: 'Local business directory and community platform for Calvia, Mallorca.',
    areaServed: {
      '@type': 'City',
      name: 'Calvia',
      containedInPlace: {
        '@type': 'AdministrativeArea',
        name: 'Mallorca, Balearic Islands, Spain',
      },
    },
    sameAs: [],
  };

  return (
    <>
      <script
        type="application/ld+json"
        dangerouslySetInnerHTML={{ __html: JSON.stringify(website) }}
      />
      <script
        type="application/ld+json"
        dangerouslySetInnerHTML={{ __html: JSON.stringify(org) }}
      />
    </>
  );
}
