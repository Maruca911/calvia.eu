/*
  # Remove duplicate cross-listed business entries

  1. Problem
    - 8 professional services firms are listed 2-3 times across Lawyers, Accountants, and Financial Advisors categories
    - This creates duplicate profiles and inflates listing counts

  2. Solution
    - Keep one entry per business (the one with the longest description / best data)
    - Remove 12 duplicate entries total

  3. Businesses Affected
    - De Micco & Friends: keep lawyers-legal, remove accountants-tax + financial-advisors
    - Lullius Partners: keep professional-services, remove accountants-tax + financial-advisors
    - Moya & Emery: keep accountants-tax, remove lawyers-legal + financial-advisors
    - Blevins Franks: keep lawyers-legal, remove financial-advisors + accountants-tax
    - Puga & Alarcon: keep accountants-tax, remove financial-advisors
    - FR&P Abogados: keep accountants-tax, remove lawyers-legal
    - Garcia Elsener: keep accountants-tax, remove financial-advisors
    - Joan Cerda: keep accountants-tax, remove financial-advisors
*/

DELETE FROM businesses WHERE id IN (
  -- De Micco & Friends duplicates (keep dc811916 in accountants-tax with longest desc)
  '830211e5-d8e7-440f-a3de-bcc002ce888d',
  'd8194e40-e222-4d4c-932e-6a664bd71fb5',
  -- Lullius Partners duplicates (keep 0b70bc91 in professional-services with best address)
  'c5752faa-d4b3-4de3-b32e-df3f9ec7f3ed',
  '4793b443-0501-4288-b0cc-5602303010bc',
  -- Moya & Emery duplicates (keep 7423230d in accountants-tax)
  '0abb5a6b-926b-406d-a790-a1151a2117f9',
  '64068b18-61a2-4e03-ae9e-da4729430b71',
  -- Blevins Franks duplicates (keep f6c115cd in lawyers-legal)
  '202b39b7-ef5d-423e-807d-bacc08aa6af9',
  '80d9ef85-acc8-40e6-8a50-c2d553d129e1',
  -- Puga & Alarcon duplicate (keep cba81ba1 in accountants-tax)
  'ed2c85e6-f453-4d3a-bd79-aa3c76901069',
  -- FR&P Abogados duplicate (keep b16b753f in accountants-tax)
  'ec2b56a1-92e8-49ed-9f6c-ae7a679a0e18',
  -- Garcia Elsener duplicate (keep 914864a4 in accountants-tax)
  'e2568467-b562-461c-a502-01f453b7b7f6',
  -- Joan Cerda duplicate (keep f088367a in accountants-tax)
  '04d10bf3-810d-47c7-8935-df58afba6864'
);