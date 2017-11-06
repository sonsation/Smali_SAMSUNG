.class Lcom/samsung/android/support/sesl/core/widget/SeslTextViewReflector$BaseTextViewReflectorImpl;
.super Ljava/lang/Object;
.source "SeslTextViewReflector.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/core/widget/SeslTextViewReflector$TextViewReflectorImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/widget/SeslTextViewReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaseTextViewReflectorImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/support/sesl/core/widget/SeslTextViewReflector$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/support/sesl/core/widget/SeslTextViewReflector$1;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslTextViewReflector$BaseTextViewReflectorImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getField_mSingleLine(Landroid/widget/TextView;)Z
    .locals 4
    .param p1, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 30
    invoke-static {}, Lcom/samsung/android/support/sesl/core/widget/SeslTextViewReflector;->access$000()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mSingleLine"

    invoke-static {v2, v3}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 31
    .local v0, "field":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_0

    .line 32
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 33
    invoke-static {p1, v0}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v1

    .line 34
    .local v1, "object":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 35
    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "object":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 38
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isTextSelectionProgressing()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-static {}, Lcom/samsung/android/support/sesl/core/widget/SeslTextViewReflector;->access$000()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "semIsTextSelectionProgressing"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-static {v3, v4, v5}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 44
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 45
    const/4 v3, 0x0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 46
    .local v1, "object":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    .line 47
    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "object":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 50
    :cond_0
    return v2
.end method

.method public isTextViewHovered()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 55
    invoke-static {}, Lcom/samsung/android/support/sesl/core/widget/SeslTextViewReflector;->access$000()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "semIsTextViewHovered"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-static {v3, v4, v5}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 56
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 57
    const/4 v3, 0x0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 58
    .local v1, "object":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    .line 59
    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "object":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 62
    :cond_0
    return v2
.end method
