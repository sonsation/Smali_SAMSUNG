.class public Lcom/samsung/android/settings/display/AppListView;
.super Landroid/widget/ListView;
.source "AppListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/display/AppListView$ActivityEntry;,
        Lcom/samsung/android/settings/display/AppListView$AppsAdapter;
    }
.end annotation


# static fields
.field private static mFontScale:F

.field private static mFontSize:I

.field private static mFontStyle:Landroid/graphics/Typeface;

.field private static mPackageName:[Ljava/lang/String;


# direct methods
.method static synthetic -get0()F
    .locals 1

    sget v0, Lcom/samsung/android/settings/display/AppListView;->mFontScale:F

    return v0
.end method

.method static synthetic -get1()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/display/AppListView;->mFontSize:I

    return v0
.end method

.method static synthetic -get2()Landroid/graphics/Typeface;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/display/AppListView;->mFontStyle:Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic -get3()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/display/AppListView;->mPackageName:[Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    .line 51
    const-string/jumbo v1, "com.sec.android.app.camera"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 52
    invoke-static {}, Lcom/android/settings/Utils;->getClockPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 53
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settingslib/Utils;->getContactsPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 54
    const-string/jumbo v1, "com.samsung.android.email.provider"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 55
    const-string/jumbo v1, "com.sec.android.app.sbrowser"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 56
    const-string/jumbo v1, "com.sec.android.gallery3d"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 50
    sput-object v0, Lcom/samsung/android/settings/display/AppListView;->mPackageName:[Ljava/lang/String;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/display/AppListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/display/AppListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/display/AppListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleResId"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 77
    new-instance v0, Lcom/samsung/android/settings/display/AppListView$AppsAdapter;

    const v1, 0x7f040174

    .line 78
    const v2, 0x1020014

    const v3, 0x1020007

    .line 77
    invoke-direct {v0, p1, v1, v2, v3}, Lcom/samsung/android/settings/display/AppListView$AppsAdapter;-><init>(Landroid/content/Context;III)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/AppListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 74
    return-void
.end method


# virtual methods
.method public setTextScale(IF)V
    .locals 0
    .param p1, "font_size"    # I
    .param p2, "font_scale"    # F

    .prologue
    .line 81
    sput p1, Lcom/samsung/android/settings/display/AppListView;->mFontSize:I

    .line 82
    sput p2, Lcom/samsung/android/settings/display/AppListView;->mFontScale:F

    .line 80
    return-void
.end method

.method public setTextStyle(Landroid/graphics/Typeface;)V
    .locals 0
    .param p1, "font_style"    # Landroid/graphics/Typeface;

    .prologue
    .line 86
    sput-object p1, Lcom/samsung/android/settings/display/AppListView;->mFontStyle:Landroid/graphics/Typeface;

    .line 85
    return-void
.end method
