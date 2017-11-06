.class Lcom/samsung/android/support/sesl/core/icu/SeslLocaleDataReflector$BaseLocaleDataReflectorImpl;
.super Ljava/lang/Object;
.source "SeslLocaleDataReflector.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/core/icu/SeslLocaleDataReflector$LocaleDataReflectorImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/icu/SeslLocaleDataReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaseLocaleDataReflectorImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/support/sesl/core/icu/SeslLocaleDataReflector$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/support/sesl/core/icu/SeslLocaleDataReflector$1;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/icu/SeslLocaleDataReflector$BaseLocaleDataReflectorImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/util/Locale;)Ljava/lang/Object;
    .locals 9
    .param p1, "locale"    # Ljava/util/Locale;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 79
    const-string v3, "libcore.icu.LocaleData"

    const-string v4, "get"

    new-array v5, v8, [Ljava/lang/Class;

    const-class v6, Ljava/util/Locale;

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 80
    .local v1, "method":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_1

    .line 81
    new-array v3, v8, [Ljava/lang/Object;

    aput-object p1, v3, v7

    invoke-static {v2, v1, v3}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 82
    .local v0, "data":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "libcore.icu.LocaleData"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 84
    .end local v0    # "data":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "data":Ljava/lang/Object;
    :cond_0
    move-object v0, v2

    .line 82
    goto :goto_0

    .end local v0    # "data":Ljava/lang/Object;
    :cond_1
    move-object v0, v2

    .line 84
    goto :goto_0
.end method

.method public getField_amPm(Ljava/lang/Object;)[Ljava/lang/String;
    .locals 5
    .param p1, "localeData"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x2

    .line 42
    const-string v2, "libcore.icu.LocaleData"

    const-string v3, "amPm"

    invoke-static {v2, v3}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->getField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 43
    .local v1, "field":Ljava/lang/reflect/Field;
    if-eqz v1, :cond_0

    .line 44
    const-class v2, Ljava/lang/String;

    invoke-static {v2, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 45
    .local v0, "amPm":Ljava/lang/Object;
    invoke-static {p1, v1}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    .line 46
    instance-of v2, v0, [Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 47
    check-cast v0, [Ljava/lang/String;

    .end local v0    # "amPm":Ljava/lang/Object;
    check-cast v0, [Ljava/lang/String;

    .line 50
    :goto_0
    return-object v0

    :cond_0
    new-array v0, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Am"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "Pm"

    aput-object v3, v0, v2

    goto :goto_0
.end method

.method public getField_narrowAm(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p1, "localeData"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 55
    const-string v2, "libcore.icu.LocaleData"

    const-string v3, "narrowAm"

    invoke-static {v2, v3}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->getField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 56
    .local v1, "field":Ljava/lang/reflect/Field;
    if-eqz v1, :cond_0

    .line 57
    invoke-static {p1, v1}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    .line 58
    .local v0, "am":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 59
    check-cast v0, Ljava/lang/String;

    .line 62
    .end local v0    # "am":Ljava/lang/Object;
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Am"

    goto :goto_0
.end method

.method public getField_narrowPm(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p1, "localeData"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 67
    const-string v2, "libcore.icu.LocaleData"

    const-string v3, "narrowPm"

    invoke-static {v2, v3}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->getField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 68
    .local v0, "field":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_0

    .line 69
    invoke-static {p1, v0}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v1

    .line 70
    .local v1, "pm":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 71
    check-cast v1, Ljava/lang/String;

    .line 74
    .end local v1    # "pm":Ljava/lang/Object;
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "Pm"

    goto :goto_0
.end method

.method public getField_zeroDigit(Ljava/lang/Object;)C
    .locals 4
    .param p1, "localeData"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 30
    const-string v2, "libcore.icu.LocaleData"

    const-string/jumbo v3, "zeroDigit"

    invoke-static {v2, v3}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->getField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 31
    .local v0, "field":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_0

    .line 32
    invoke-static {p1, v0}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v1

    .line 33
    .local v1, "zeroDigit":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Character;

    if-eqz v2, :cond_0

    .line 34
    check-cast v1, Ljava/lang/Character;

    .end local v1    # "zeroDigit":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v2

    .line 37
    :goto_0
    return v2

    :cond_0
    const/16 v2, 0x30

    goto :goto_0
.end method
