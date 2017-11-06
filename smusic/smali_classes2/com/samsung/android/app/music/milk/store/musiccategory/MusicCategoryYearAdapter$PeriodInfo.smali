.class Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearAdapter$PeriodInfo;
.super Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;
.source "MusicCategoryYearAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PeriodInfo"
.end annotation


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;)V
    .locals 6
    .param p1, "info"    # Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;

    .prologue
    .line 131
    iget-object v1, p1, Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;->periodId:Ljava/lang/String;

    iget-object v2, p1, Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;->yearId:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;->yearName:Ljava/lang/String;

    iget-object v4, p1, Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;->periodName:Ljava/lang/String;

    iget-object v5, p1, Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;->imageUrl:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return-void
.end method
