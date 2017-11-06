.class Lcom/samsung/android/support/sesl/core/widget/SeslCompoundButtonCompat$BaseCompoundButtonCompat;
.super Ljava/lang/Object;
.source "SeslCompoundButtonCompat.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/core/widget/SeslCompoundButtonCompat$CompoundButtonCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/widget/SeslCompoundButtonCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseCompoundButtonCompat"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getButtonDrawable(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "button"    # Landroid/widget/CompoundButton;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 55
    invoke-static {}, Lcom/samsung/android/support/sesl/core/widget/SeslCompoundButtonCompat;->access$000()Z

    move-result v1

    if-nez v1, :cond_0

    .line 57
    :try_start_0
    const-class v1, Landroid/widget/CompoundButton;

    const-string v3, "mButtonDrawable"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/sesl/core/widget/SeslCompoundButtonCompat;->access$102(Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    .line 58
    invoke-static {}, Lcom/samsung/android/support/sesl/core/widget/SeslCompoundButtonCompat;->access$100()Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    invoke-static {v4}, Lcom/samsung/android/support/sesl/core/widget/SeslCompoundButtonCompat;->access$002(Z)Z

    .line 65
    :cond_0
    invoke-static {}, Lcom/samsung/android/support/sesl/core/widget/SeslCompoundButtonCompat;->access$100()Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 67
    :try_start_1
    invoke-static {}, Lcom/samsung/android/support/sesl/core/widget/SeslCompoundButtonCompat;->access$100()Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 73
    :goto_1
    return-object v1

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const-string v1, "getButtonDrawable"

    const-string v3, "Failed to retrieve mButtonDrawable field"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 68
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v1, "getButtonDrawable"

    const-string v3, "Failed to get button drawable via reflection"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    invoke-static {v2}, Lcom/samsung/android/support/sesl/core/widget/SeslCompoundButtonCompat;->access$102(Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_1
    move-object v1, v2

    .line 73
    goto :goto_1
.end method
