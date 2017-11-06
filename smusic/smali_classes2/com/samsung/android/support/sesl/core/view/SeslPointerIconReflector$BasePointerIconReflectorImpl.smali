.class Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector$BasePointerIconReflectorImpl;
.super Ljava/lang/Object;
.source "SeslPointerIconReflector.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector$PointerIconReflectorImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BasePointerIconReflectorImpl"
.end annotation


# static fields
.field protected static mClassName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "android.view.PointerIcon"

    sput-object v0, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector$BasePointerIconReflectorImpl;->mClassName:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public getField_HOVERING_PENSELECT_POINTER_01()I
    .locals 4

    .prologue
    .line 99
    sget-object v2, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector$BasePointerIconReflectorImpl;->mClassName:Ljava/lang/String;

    const-string v3, "HOVERING_PENSELECT_POINTER_01"

    invoke-static {v2, v3}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->getField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 100
    .local v0, "field":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_0

    .line 101
    const/4 v2, 0x0

    invoke-static {v2, v0}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v1

    .line 102
    .local v1, "object":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 103
    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "object":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 106
    :goto_0
    return v2

    :cond_0
    const/16 v2, 0x15

    goto :goto_0
.end method

.method public getField_HOVERING_SCROLLICON_POINTER_01()I
    .locals 4

    .prologue
    .line 51
    sget-object v2, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector$BasePointerIconReflectorImpl;->mClassName:Ljava/lang/String;

    const-string v3, "HOVERING_SCROLLICON_POINTER_01"

    invoke-static {v2, v3}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->getField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 52
    .local v0, "field":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_0

    .line 53
    const/4 v2, 0x0

    invoke-static {v2, v0}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v1

    .line 54
    .local v1, "object":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 55
    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "object":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 58
    :goto_0
    return v2

    :cond_0
    const/16 v2, 0xb

    goto :goto_0
.end method

.method public getField_HOVERING_SCROLLICON_POINTER_03()I
    .locals 4

    .prologue
    .line 63
    sget-object v2, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector$BasePointerIconReflectorImpl;->mClassName:Ljava/lang/String;

    const-string v3, "HOVERING_SCROLLICON_POINTER_03"

    invoke-static {v2, v3}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->getField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 64
    .local v0, "field":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_0

    .line 65
    const/4 v2, 0x0

    invoke-static {v2, v0}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v1

    .line 66
    .local v1, "object":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 67
    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "object":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 70
    :goto_0
    return v2

    :cond_0
    const/16 v2, 0xd

    goto :goto_0
.end method

.method public getField_HOVERING_SCROLLICON_POINTER_05()I
    .locals 4

    .prologue
    .line 75
    sget-object v2, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector$BasePointerIconReflectorImpl;->mClassName:Ljava/lang/String;

    const-string v3, "HOVERING_SCROLLICON_POINTER_05"

    invoke-static {v2, v3}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->getField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 76
    .local v0, "field":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_0

    .line 77
    const/4 v2, 0x0

    invoke-static {v2, v0}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v1

    .line 78
    .local v1, "object":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 79
    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "object":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 82
    :goto_0
    return v2

    :cond_0
    const/16 v2, 0xf

    goto :goto_0
.end method

.method public getField_HOVERING_SCROLLICON_POINTER_07()I
    .locals 4

    .prologue
    .line 87
    sget-object v2, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector$BasePointerIconReflectorImpl;->mClassName:Ljava/lang/String;

    const-string v3, "HOVERING_SCROLLICON_POINTER_07"

    invoke-static {v2, v3}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->getField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 88
    .local v0, "field":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_0

    .line 89
    const/4 v2, 0x0

    invoke-static {v2, v0}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v1

    .line 90
    .local v1, "object":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 91
    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "object":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 94
    :goto_0
    return v2

    :cond_0
    const/16 v2, 0x11

    goto :goto_0
.end method

.method public getField_HOVERING_SPENICON_DEFAULT()I
    .locals 4

    .prologue
    .line 39
    sget-object v2, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector$BasePointerIconReflectorImpl;->mClassName:Ljava/lang/String;

    const-string v3, "HOVERING_SPENICON_DEFAULT"

    invoke-static {v2, v3}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->getField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 40
    .local v0, "field":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_0

    .line 41
    const/4 v2, 0x0

    invoke-static {v2, v0}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v1

    .line 42
    .local v1, "object":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 43
    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "object":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 46
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setHoveringSpenIcon(Landroid/view/MotionEvent;II)V
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "iconType"    # I
    .param p3, "customIconId"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 111
    sget-object v1, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector$BasePointerIconReflectorImpl;->mClassName:Ljava/lang/String;

    const-string/jumbo v2, "setHoveringSpenIcon"

    new-array v3, v7, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 112
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 113
    const/4 v1, 0x0

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v0, v2}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :cond_0
    return-void
.end method
