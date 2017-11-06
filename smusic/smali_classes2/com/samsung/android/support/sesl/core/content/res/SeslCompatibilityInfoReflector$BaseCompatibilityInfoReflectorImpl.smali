.class Lcom/samsung/android/support/sesl/core/content/res/SeslCompatibilityInfoReflector$BaseCompatibilityInfoReflectorImpl;
.super Ljava/lang/Object;
.source "SeslCompatibilityInfoReflector.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/core/content/res/SeslCompatibilityInfoReflector$CompatibilityInfoReflectorImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/content/res/SeslCompatibilityInfoReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaseCompatibilityInfoReflectorImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/support/sesl/core/content/res/SeslCompatibilityInfoReflector$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/support/sesl/core/content/res/SeslCompatibilityInfoReflector$1;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/content/res/SeslCompatibilityInfoReflector$BaseCompatibilityInfoReflectorImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getField_applicationScale(Landroid/content/res/Resources;)F
    .locals 5
    .param p1, "resources"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 24
    invoke-static {p1}, Lcom/samsung/android/support/sesl/core/content/res/SeslResourcesReflector;->getCompatibilityInfo(Landroid/content/res/Resources;)Ljava/lang/Object;

    move-result-object v0

    .line 25
    .local v0, "compatibilityInfo":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 26
    const-string v3, "android.content.res.CompatibilityInfo"

    const-string v4, "applicationScale"

    invoke-static {v3, v4}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->getField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 27
    .local v1, "field":Ljava/lang/reflect/Field;
    if-eqz v1, :cond_0

    .line 28
    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v2

    .line 29
    .local v2, "scale":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    .line 30
    check-cast v2, Ljava/lang/Integer;

    .end local v2    # "scale":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    .line 34
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :goto_0
    return v3

    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0
.end method
