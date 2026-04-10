import { NextResponse } from 'next/server';
export function middleware(req) {
  const url = req.nextUrl;
  const country = req.headers.get('x-vercel-ip-country') || 'US';
  const ua = req.headers.get('user-agent') || '';
  const allowedCountries = ['RU', 'BY', 'KZ', 'AM', 'AZ', 'KG', 'TJ', 'UZ', 'MD'];
  const isSuspiciousBot = /HeadlessChrome|Lighthouse|PageSpeed|SemrushBot|AhrefsBot|DotBot|PetalBot/i.test(ua);
  if (!allowedCountries.includes(country) || isSuspiciousBot) {
    return new NextResponse(null, { status: 403 });
  }

  return NextResponse.next();
}
export const config = {
  matcher: '/:path*',
};
