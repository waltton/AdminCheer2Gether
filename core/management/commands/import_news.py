import json

from django.core.management.base import BaseCommand
from django.db import transaction

from core.models import News


class Command(BaseCommand):
    @transaction.atomic
    def handle(self, *args, **options):

        with open('page3.json', 'r') as page:
            data = json.loads('\n'.join(page.readlines()))

        for aticle in data.get('articles'):
            news = News(
                sport_id=1,
                title=aticle.get('title'),
                message=aticle.get('description'),
                media=aticle.get('urlToImage'),
                banner=False,
            )

            news.save()

            print(news)

        raise


