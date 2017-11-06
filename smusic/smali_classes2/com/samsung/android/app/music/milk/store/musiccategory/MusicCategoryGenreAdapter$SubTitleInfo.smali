.class Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$SubTitleInfo;
.super Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;
.source "MusicCategoryGenreAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SubTitleInfo"
.end annotation


# instance fields
.field private subTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "subTitle"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 244
    invoke-direct {p0, v0, v0, v0, v0}, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$SubTitleInfo;->subTitle:Ljava/lang/String;

    .line 246
    return-void
.end method


# virtual methods
.method public getSubTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$SubTitleInfo;->subTitle:Ljava/lang/String;

    return-object v0
.end method
