.class public final Lcom/samsung/android/support/sesl/core/widget/SeslCompoundButtonCompat;
.super Ljava/lang/Object;
.source "SeslCompoundButtonCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/widget/SeslCompoundButtonCompat$Api23CompoundButtonImpl;,
        Lcom/samsung/android/support/sesl/core/widget/SeslCompoundButtonCompat$BaseCompoundButtonCompat;,
        Lcom/samsung/android/support/sesl/core/widget/SeslCompoundButtonCompat$CompoundButtonCompatImpl;
    }
.end annotation


# static fields
.field private static final IMPL:Lcom/samsung/android/support/sesl/core/widget/SeslCompoundButtonCompat$CompoundButtonCompatImpl;

.field private static sButtonDrawableField:Ljava/lang/reflect/Field;

.field private static sButtonDrawableFieldFetched:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 40
    .local v0, "sdk":I
    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 41
    new-instance v1, Lcom/samsung/android/support/sesl/core/widget/SeslCompoundButtonCompat$Api23CompoundButtonImpl;

    invoke-direct {v1}, Lcom/samsung/android/support/sesl/core/widget/SeslCompoundButtonCompat$Api23CompoundButtonImpl;-><init>()V

    sput-object v1, Lcom/samsung/android/support/sesl/core/widget/SeslCompoundButtonCompat;->IMPL:Lcom/samsung/android/support/sesl/core/widget/SeslCompoundButtonCompat$CompoundButtonCompatImpl;

    .line 45
    :goto_0
    return-void

    .line 43
    :cond_0
    new-instance v1, Lcom/samsung/android/support/sesl/core/widget/SeslCompoundButtonCompat$BaseCompoundButtonCompat;

    invoke-direct {v1}, Lcom/samsung/android/support/sesl/core/widget/SeslCompoundButtonCompat$BaseCompoundButtonCompat;-><init>()V

    sput-object v1, Lcom/samsung/android/support/sesl/core/widget/SeslCompoundButtonCompat;->IMPL:Lcom/samsung/android/support/sesl/core/widget/SeslCompoundButtonCompat$CompoundButtonCompatImpl;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 32
    sget-boolean v0, Lcom/samsung/android/support/sesl/core/widget/SeslCompoundButtonCompat;->sButtonDrawableFieldFetched:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 32
    sput-boolean p0, Lcom/samsung/android/support/sesl/core/widget/SeslCompoundButtonCompat;->sButtonDrawableFieldFetched:Z

    return p0
.end method

.method static synthetic access$100()Ljava/lang/reflect/Field;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslCompoundButtonCompat;->sButtonDrawableField:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;
    .locals 0
    .param p0, "x0"    # Ljava/lang/reflect/Field;

    .prologue
    .line 32
    sput-object p0, Lcom/samsung/android/support/sesl/core/widget/SeslCompoundButtonCompat;->sButtonDrawableField:Ljava/lang/reflect/Field;

    return-object p0
.end method

.method public static getButtonDrawable(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "button"    # Landroid/widget/CompoundButton;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 93
    sget-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslCompoundButtonCompat;->IMPL:Lcom/samsung/android/support/sesl/core/widget/SeslCompoundButtonCompat$CompoundButtonCompatImpl;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/sesl/core/widget/SeslCompoundButtonCompat$CompoundButtonCompatImpl;->getButtonDrawable(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
