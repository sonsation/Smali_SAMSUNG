.class Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat$MarshmallowResourcesCompatImpl;
.super Ljava/lang/Object;
.source "ResourcesCompat.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat$ResourcesCompatImpl;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MarshmallowResourcesCompatImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat$1;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat$MarshmallowResourcesCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "id"    # I
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 43
    invoke-virtual {p1, p2, p3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    return v0
.end method

.method public getColorStateList(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "id"    # I
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 48
    invoke-virtual {p1, p2, p3}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method
