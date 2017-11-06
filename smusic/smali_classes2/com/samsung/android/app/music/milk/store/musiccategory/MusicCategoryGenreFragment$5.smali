.class Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment$5;
.super Ljava/lang/Object;
.source "MusicCategoryGenreFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/util/MilkCollectionUtils$Converter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;->getSelectedGenreIds()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/music/milk/util/MilkCollectionUtils$Converter",
        "<",
        "Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment$5;->this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 237
    check-cast p1, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment$5;->convert(Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public convert(Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "target"    # Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;

    .prologue
    .line 240
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/musiccategory/GenreInfo;->getGenreId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
