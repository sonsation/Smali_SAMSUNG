.class public final Lcom/samsung/android/support/sesl/core/view/SeslPointerIconCompat;
.super Ljava/lang/Object;
.source "SeslPointerIconCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/view/SeslPointerIconCompat$Api24PointerIconCompatImpl;,
        Lcom/samsung/android/support/sesl/core/view/SeslPointerIconCompat$BasePointerIconCompatImpl;,
        Lcom/samsung/android/support/sesl/core/view/SeslPointerIconCompat$PointerIconCompatImpl;
    }
.end annotation


# static fields
.field static final IMPL:Lcom/samsung/android/support/sesl/core/view/SeslPointerIconCompat$PointerIconCompatImpl;

.field public static final TYPE_ALIAS:I = 0x3f2

.field public static final TYPE_ALL_SCROLL:I = 0x3f5

.field public static final TYPE_ARROW:I = 0x3e8

.field public static final TYPE_CELL:I = 0x3ee

.field public static final TYPE_CONTEXT_MENU:I = 0x3e9

.field public static final TYPE_COPY:I = 0x3f3

.field public static final TYPE_CROSSHAIR:I = 0x3ef

.field public static final TYPE_DEFAULT:I = 0x3e8

.field public static final TYPE_GRAB:I = 0x3fc

.field public static final TYPE_GRABBING:I = 0x3fd

.field public static final TYPE_HAND:I = 0x3ea

.field public static final TYPE_HELP:I = 0x3eb

.field public static final TYPE_HORIZONTAL_DOUBLE_ARROW:I = 0x3f6

.field public static final TYPE_NO_DROP:I = 0x3f4

.field public static final TYPE_NULL:I = 0x0

.field public static final TYPE_TEXT:I = 0x3f0

.field public static final TYPE_TOP_LEFT_DIAGONAL_DOUBLE_ARROW:I = 0x3f9

.field public static final TYPE_TOP_RIGHT_DIAGONAL_DOUBLE_ARROW:I = 0x3f8

.field public static final TYPE_VERTICAL_DOUBLE_ARROW:I = 0x3f7

.field public static final TYPE_VERTICAL_TEXT:I = 0x3f1

.field public static final TYPE_WAIT:I = 0x3ec

.field public static final TYPE_ZOOM_IN:I = 0x3fa

.field public static final TYPE_ZOOM_OUT:I = 0x3fb


# instance fields
.field private mPointerIcon:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 158
    invoke-static {}, Lcom/samsung/android/support/sesl/core/os/SeslBuildCompat;->isAtLeastN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    new-instance v0, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconCompat$Api24PointerIconCompatImpl;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconCompat$Api24PointerIconCompatImpl;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconCompat;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslPointerIconCompat$PointerIconCompatImpl;

    .line 163
    :goto_0
    return-void

    .line 161
    :cond_0
    new-instance v0, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconCompat$BasePointerIconCompatImpl;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconCompat$BasePointerIconCompatImpl;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconCompat;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslPointerIconCompat$PointerIconCompatImpl;

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "pointerIcon"    # Ljava/lang/Object;

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconCompat;->mPointerIcon:Ljava/lang/Object;

    .line 106
    return-void
.end method

.method public static create(Landroid/graphics/Bitmap;FF)Lcom/samsung/android/support/sesl/core/view/SeslPointerIconCompat;
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "hotSpotX"    # F
    .param p2, "hotSpotY"    # F

    .prologue
    .line 193
    new-instance v0, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconCompat;

    sget-object v1, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconCompat;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslPointerIconCompat$PointerIconCompatImpl;

    invoke-interface {v1, p0, p1, p2}, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconCompat$PointerIconCompatImpl;->create(Landroid/graphics/Bitmap;FF)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconCompat;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static getSystemIcon(Landroid/content/Context;I)Lcom/samsung/android/support/sesl/core/view/SeslPointerIconCompat;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "style"    # I

    .prologue
    .line 176
    new-instance v0, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconCompat;

    sget-object v1, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconCompat;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslPointerIconCompat$PointerIconCompatImpl;

    invoke-interface {v1, p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconCompat$PointerIconCompatImpl;->getSystemIcon(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconCompat;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static load(Landroid/content/res/Resources;I)Lcom/samsung/android/support/sesl/core/view/SeslPointerIconCompat;
    .locals 2
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "resourceId"    # I

    .prologue
    .line 218
    new-instance v0, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconCompat;

    sget-object v1, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconCompat;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslPointerIconCompat$PointerIconCompatImpl;

    invoke-interface {v1, p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconCompat$PointerIconCompatImpl;->load(Landroid/content/res/Resources;I)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconCompat;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public getPointerIcon()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconCompat;->mPointerIcon:Ljava/lang/Object;

    return-object v0
.end method
