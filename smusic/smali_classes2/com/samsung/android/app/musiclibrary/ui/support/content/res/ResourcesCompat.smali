.class public Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;
.super Ljava/lang/Object;
.source "ResourcesCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat$BaseResourcesCompatImpl;,
        Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat$MarshmallowResourcesCompatImpl;,
        Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat$ResourcesCompatImpl;
    }
.end annotation


# static fields
.field private static final IMPL:Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat$ResourcesCompatImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 17
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 18
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat$MarshmallowResourcesCompatImpl;

    invoke-direct {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat$MarshmallowResourcesCompatImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat$1;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->IMPL:Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat$ResourcesCompatImpl;

    .line 22
    :goto_0
    return-void

    .line 20
    :cond_0
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat$BaseResourcesCompatImpl;

    invoke-direct {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat$BaseResourcesCompatImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat$1;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->IMPL:Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat$ResourcesCompatImpl;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "id"    # I
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 31
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->IMPL:Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat$ResourcesCompatImpl;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat$ResourcesCompatImpl;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    return v0
.end method

.method public static getColorStateList(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "id"    # I
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 35
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->IMPL:Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat$ResourcesCompatImpl;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat$ResourcesCompatImpl;->getColorStateList(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method
