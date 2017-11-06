.class Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$DescInfo;
.super Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;
.source "MusicCategoryGenreAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DescInfo"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 255
    invoke-direct {p0, v0, v0, v0, v0}, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    return-void
.end method
