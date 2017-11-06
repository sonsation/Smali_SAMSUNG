.class public interface abstract Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryConstant;
.super Ljava/lang/Object;
.source "IMusicCategoryConstant.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryConstant$CountryGroup;,
        Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryConstant$RequestType;,
        Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryConstant$CategoryType;,
        Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryConstant$DetailIntentInfo;,
        Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryConstant$GenreType;
    }
.end annotation


# static fields
.field public static final ACTION_CATEGORY_REODER:Ljava/lang/String; = "milk.store.category.category_reorder"

.field public static final CountryGroupRequestType:[Ljava/lang/String;

.field public static final GENRE_MAX:I = 0x8

.field public static final GENRE_MIN:I = 0x4

.field public static final MESSAGE_KEY:Ljava/lang/String; = "period_name"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 4
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "00"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "01"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "02"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryConstant;->CountryGroupRequestType:[Ljava/lang/String;

    return-void
.end method
