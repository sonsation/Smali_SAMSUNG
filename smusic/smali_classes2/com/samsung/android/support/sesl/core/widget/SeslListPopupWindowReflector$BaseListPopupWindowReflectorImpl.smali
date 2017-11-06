.class Lcom/samsung/android/support/sesl/core/widget/SeslListPopupWindowReflector$BaseListPopupWindowReflectorImpl;
.super Ljava/lang/Object;
.source "SeslListPopupWindowReflector.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/core/widget/SeslListPopupWindowReflector$ListPopupWindowReflectorImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/widget/SeslListPopupWindowReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaseListPopupWindowReflectorImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/support/sesl/core/widget/SeslListPopupWindowReflector$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/support/sesl/core/widget/SeslListPopupWindowReflector$1;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslListPopupWindowReflector$BaseListPopupWindowReflectorImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getField_mPopup(Landroid/widget/ListPopupWindow;)Landroid/widget/PopupWindow;
    .locals 4
    .param p1, "listPopupWindow"    # Landroid/widget/ListPopupWindow;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 25
    invoke-static {}, Lcom/samsung/android/support/sesl/core/widget/SeslListPopupWindowReflector;->access$000()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mPopup"

    invoke-static {v2, v3}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 26
    .local v0, "field":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_0

    .line 27
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 28
    invoke-static {p1, v0}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v1

    .line 29
    .local v1, "object":Ljava/lang/Object;
    instance-of v2, v1, Landroid/widget/PopupWindow;

    if-eqz v2, :cond_0

    .line 30
    check-cast v1, Landroid/widget/PopupWindow;

    .line 33
    .end local v1    # "object":Ljava/lang/Object;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
