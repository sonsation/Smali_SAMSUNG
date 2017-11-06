.class public final Lcom/samsung/android/support/sesl/core/widget/SeslPopupWindowCompat;
.super Ljava/lang/Object;
.source "SeslPopupWindowCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/widget/SeslPopupWindowCompat$Api23PopupWindowImpl;,
        Lcom/samsung/android/support/sesl/core/widget/SeslPopupWindowCompat$BasePopupWindowImpl;,
        Lcom/samsung/android/support/sesl/core/widget/SeslPopupWindowCompat$PopupWindowImpl;
    }
.end annotation


# static fields
.field static final IMPL:Lcom/samsung/android/support/sesl/core/widget/SeslPopupWindowCompat$PopupWindowImpl;

.field private static final TAG:Ljava/lang/String; = "SeslPopupWindowCompat"

.field private static sOverlapAnchorField:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 153
    :try_start_0
    const-class v2, Landroid/widget/PopupWindow;

    const-string v3, "mOverlapAnchor"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/support/sesl/core/widget/SeslPopupWindowCompat;->sOverlapAnchorField:Ljava/lang/reflect/Field;

    .line 154
    sget-object v2, Lcom/samsung/android/support/sesl/core/widget/SeslPopupWindowCompat;->sOverlapAnchorField:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 160
    .local v1, "version":I
    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 161
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    new-instance v2, Lcom/samsung/android/support/sesl/core/widget/SeslPopupWindowCompat$Api23PopupWindowImpl;

    invoke-direct {v2}, Lcom/samsung/android/support/sesl/core/widget/SeslPopupWindowCompat$Api23PopupWindowImpl;-><init>()V

    sput-object v2, Lcom/samsung/android/support/sesl/core/widget/SeslPopupWindowCompat;->IMPL:Lcom/samsung/android/support/sesl/core/widget/SeslPopupWindowCompat$PopupWindowImpl;

    .line 165
    :goto_1
    return-void

    .line 155
    .end local v1    # "version":I
    :catch_0
    move-exception v0

    .line 156
    .restart local v0    # "e":Ljava/lang/NoSuchFieldException;
    const-string v2, "SeslPopupWindowCompat"

    const-string v3, "Could not fetch mOverlapAnchor field from PopupWindow"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 163
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    .restart local v1    # "version":I
    :cond_0
    new-instance v2, Lcom/samsung/android/support/sesl/core/widget/SeslPopupWindowCompat$BasePopupWindowImpl;

    invoke-direct {v2}, Lcom/samsung/android/support/sesl/core/widget/SeslPopupWindowCompat$BasePopupWindowImpl;-><init>()V

    sput-object v2, Lcom/samsung/android/support/sesl/core/widget/SeslPopupWindowCompat;->IMPL:Lcom/samsung/android/support/sesl/core/widget/SeslPopupWindowCompat$PopupWindowImpl;

    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    return-void
.end method

.method static synthetic access$000()Ljava/lang/reflect/Field;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslPopupWindowCompat;->sOverlapAnchorField:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public static getOverlapAnchor(Landroid/widget/PopupWindow;)Z
    .locals 1
    .param p0, "popupWindow"    # Landroid/widget/PopupWindow;

    .prologue
    .line 188
    sget-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslPopupWindowCompat;->IMPL:Lcom/samsung/android/support/sesl/core/widget/SeslPopupWindowCompat$PopupWindowImpl;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/sesl/core/widget/SeslPopupWindowCompat$PopupWindowImpl;->getOverlapAnchor(Landroid/widget/PopupWindow;)Z

    move-result v0

    return v0
.end method

.method public static getWindowLayoutType(Landroid/widget/PopupWindow;)I
    .locals 1
    .param p0, "popupWindow"    # Landroid/widget/PopupWindow;

    .prologue
    .line 210
    sget-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslPopupWindowCompat;->IMPL:Lcom/samsung/android/support/sesl/core/widget/SeslPopupWindowCompat$PopupWindowImpl;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/sesl/core/widget/SeslPopupWindowCompat$PopupWindowImpl;->getWindowLayoutType(Landroid/widget/PopupWindow;)I

    move-result v0

    return v0
.end method

.method public static setOverlapAnchor(Landroid/widget/PopupWindow;Z)V
    .locals 1
    .param p0, "popupWindow"    # Landroid/widget/PopupWindow;
    .param p1, "overlapAnchor"    # Z

    .prologue
    .line 178
    sget-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslPopupWindowCompat;->IMPL:Lcom/samsung/android/support/sesl/core/widget/SeslPopupWindowCompat$PopupWindowImpl;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslPopupWindowCompat$PopupWindowImpl;->setOverlapAnchor(Landroid/widget/PopupWindow;Z)V

    .line 179
    return-void
.end method

.method public static setWindowLayoutType(Landroid/widget/PopupWindow;I)V
    .locals 1
    .param p0, "popupWindow"    # Landroid/widget/PopupWindow;
    .param p1, "layoutType"    # I

    .prologue
    .line 201
    sget-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslPopupWindowCompat;->IMPL:Lcom/samsung/android/support/sesl/core/widget/SeslPopupWindowCompat$PopupWindowImpl;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslPopupWindowCompat$PopupWindowImpl;->setWindowLayoutType(Landroid/widget/PopupWindow;I)V

    .line 202
    return-void
.end method
