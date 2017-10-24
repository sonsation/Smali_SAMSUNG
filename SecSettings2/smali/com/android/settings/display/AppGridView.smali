.class public Lcom/android/settings/display/AppGridView;
.super Landroid/widget/GridView;
.source "AppGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/display/AppGridView$ActivityEntry;,
        Lcom/android/settings/display/AppGridView$AppsAdapter;
    }
.end annotation


# static fields
.field private static mPackageName:[Ljava/lang/String;


# direct methods
.method static synthetic -get0()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/display/AppGridView;->mPackageName:[Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    .line 44
    const-string/jumbo v1, "com.sec.android.app.popupcalculator"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 45
    const-string/jumbo v1, "com.sec.android.app.camera"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 46
    invoke-static {}, Lcom/android/settings/Utils;->getClockPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 47
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settingslib/Utils;->getContactsPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 48
    const-string/jumbo v1, "com.samsung.android.email.provider"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 49
    const-string/jumbo v1, "com.sec.android.gallery3d"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 50
    const-string/jumbo v1, "com.sec.android.app.sbrowser"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 51
    const-string/jumbo v1, "com.samsung.android.app.memo"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 52
    const-string/jumbo v1, "com.samsung.android.messaging"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 53
    const-string/jumbo v1, "com.sec.android.app.music"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 54
    invoke-static {}, Lcom/android/settingslib/Utils;->getCallPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 55
    invoke-static {}, Lcom/android/settingslib/Utils;->getCalendarPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 56
    const-string/jumbo v1, "com.samsung.voiceserviceplatform"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 57
    const-string/jumbo v1, "com.android.settings"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 58
    const-string/jumbo v1, "com.samsung.android.weather"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 43
    sput-object v0, Lcom/android/settings/display/AppGridView;->mPackageName:[Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/display/AppGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/display/AppGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/display/AppGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleResId"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 75
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/display/AppGridView;->setNumColumns(I)V

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/display/AppGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 78
    const v2, 0x7f0a016b

    .line 77
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 79
    .local v0, "columnWidth":I
    invoke-virtual {p0, v0}, Lcom/android/settings/display/AppGridView;->setColumnWidth(I)V

    .line 81
    new-instance v1, Lcom/android/settings/display/AppGridView$AppsAdapter;

    const v2, 0x7f040264

    .line 82
    const v3, 0x1020014

    const v4, 0x1020007

    .line 81
    invoke-direct {v1, p1, v2, v3, v4}, Lcom/android/settings/display/AppGridView$AppsAdapter;-><init>(Landroid/content/Context;III)V

    invoke-virtual {p0, v1}, Lcom/android/settings/display/AppGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 72
    return-void
.end method
