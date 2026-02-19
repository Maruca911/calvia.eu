import type { Guide } from '../../types/database';

interface Props {
  guide: Guide;
}

export default function ArticleSchema({ guide }: Props) {
  const schema = {
    '@context': 'https://schema.org',
    '@type': 'Article',
    headline: guide.title,
    description: guide.description,
    image: guide.image_url || undefined,
    datePublished: guide.created_at,
    dateModified: guide.updated_at,
    author: {
      '@type': 'Organization',
      name: 'Calvia.app',
      url: 'https://calvia.eu',
    },
    publisher: {
      '@type': 'Organization',
      name: 'Calvia.app',
      url: 'https://calvia.eu',
    },
    mainEntityOfPage: {
      '@type': 'WebPage',
      '@id': `https://calvia.eu/en/guides/${guide.slug}`,
    },
  };

  return (
    <script
      type="application/ld+json"
      dangerouslySetInnerHTML={{ __html: JSON.stringify(schema) }}
    />
  );
}
