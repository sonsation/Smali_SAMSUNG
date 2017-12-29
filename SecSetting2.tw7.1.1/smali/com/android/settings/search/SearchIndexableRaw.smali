.class public Lcom/android/settings/search/SearchIndexableRaw;
.super Landroid/provider/SearchIndexableData;
.source "SearchIndexableRaw.java"


# instance fields
.field public categoryId:Ljava/lang/String;

.field public entries:Ljava/lang/String;

.field public keywords:Ljava/lang/String;

.field public menu_type:I

.field public parentTitleRes:I

.field public screenTitle:Ljava/lang/String;

.field public summaryOff:Ljava/lang/String;

.field public summaryOn:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Landroid/provider/SearchIndexableData;-><init>(Landroid/content/Context;)V

    .line 34
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 39
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 44
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 49
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/settings/search/SearchIndexableRaw;->entries:Ljava/lang/String;

    .line 54
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    .line 59
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 62
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/settings/search/SearchIndexableRaw;->categoryId:Ljava/lang/String;

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/search/SearchIndexableRaw;->parentTitleRes:I

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    .line 67
    return-void
.end method
