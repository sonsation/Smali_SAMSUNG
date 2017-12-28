.class public Lcom/android/launcher3/common/compat/AlphabeticIndexCompat;
.super Lcom/android/launcher3/common/compat/BaseAlphabeticIndex;
.source "AlphabeticIndexCompat.java"


# static fields
.field private static final MID_DOT:Ljava/lang/String; = "\u2219"


# instance fields
.field private mAddLabelsMethod:Ljava/lang/reflect/Method;

.field private mAlphabeticIndex:Ljava/lang/Object;

.field private mDefaultMiscLabel:Ljava/lang/String;

.field private mGetBucketIndexMethod:Ljava/lang/reflect/Method;

.field private mGetBucketLabelMethod:Ljava/lang/reflect/Method;

.field private mHasValidAlphabeticIndex:Z

.field private mSetMaxLabelCountMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    .line 71
    invoke-direct {p0}, Lcom/android/launcher3/common/compat/BaseAlphabeticIndex;-><init>()V

    .line 73
    :try_start_0
    invoke-static {p1}, Lcom/android/launcher3/Utilities;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v2

    .line 74
    .local v2, "curLocale":Ljava/util/Locale;
    const-string v4, "libcore.icu.AlphabeticIndex"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 75
    .local v0, "clazz":Ljava/lang/Class;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/util/Locale;

    aput-object v6, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 76
    .local v1, "ctor":Ljava/lang/reflect/Constructor;
    const-string v4, "addLabels"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/util/Locale;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/common/compat/AlphabeticIndexCompat;->mAddLabelsMethod:Ljava/lang/reflect/Method;

    .line 77
    const-string v4, "setMaxLabelCount"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/common/compat/AlphabeticIndexCompat;->mSetMaxLabelCountMethod:Ljava/lang/reflect/Method;

    .line 78
    const-string v4, "getBucketIndex"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/common/compat/AlphabeticIndexCompat;->mGetBucketIndexMethod:Ljava/lang/reflect/Method;

    .line 79
    const-string v4, "getBucketLabel"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/common/compat/AlphabeticIndexCompat;->mGetBucketLabelMethod:Ljava/lang/reflect/Method;

    .line 80
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/common/compat/AlphabeticIndexCompat;->mAlphabeticIndex:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4

    .line 83
    :try_start_1
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 84
    iget-object v4, p0, Lcom/android/launcher3/common/compat/AlphabeticIndexCompat;->mAddLabelsMethod:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lcom/android/launcher3/common/compat/AlphabeticIndexCompat;->mAlphabeticIndex:Ljava/lang/Object;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4

    .line 89
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 91
    const-string v4, "\u4ed6"

    iput-object v4, p0, Lcom/android/launcher3/common/compat/AlphabeticIndexCompat;->mDefaultMiscLabel:Ljava/lang/String;

    .line 97
    :goto_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/launcher3/common/compat/AlphabeticIndexCompat;->mHasValidAlphabeticIndex:Z

    .line 101
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v1    # "ctor":Ljava/lang/reflect/Constructor;
    .end local v2    # "curLocale":Ljava/util/Locale;
    :goto_2
    return-void

    .line 86
    .restart local v0    # "clazz":Ljava/lang/Class;
    .restart local v1    # "ctor":Ljava/lang/reflect/Constructor;
    .restart local v2    # "curLocale":Ljava/util/Locale;
    :catch_0
    move-exception v3

    .line 87
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_0

    .line 98
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v1    # "ctor":Ljava/lang/reflect/Constructor;
    .end local v2    # "curLocale":Ljava/util/Locale;
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 99
    .local v3, "e":Ljava/lang/ReflectiveOperationException;
    :goto_3
    iput-boolean v9, p0, Lcom/android/launcher3/common/compat/AlphabeticIndexCompat;->mHasValidAlphabeticIndex:Z

    goto :goto_2

    .line 95
    .end local v3    # "e":Ljava/lang/ReflectiveOperationException;
    .restart local v0    # "clazz":Ljava/lang/Class;
    .restart local v1    # "ctor":Ljava/lang/reflect/Constructor;
    .restart local v2    # "curLocale":Ljava/util/Locale;
    :cond_1
    :try_start_3
    const-string v4, "\u2219"

    iput-object v4, p0, Lcom/android/launcher3/common/compat/AlphabeticIndexCompat;->mDefaultMiscLabel:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_1

    .line 98
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v1    # "ctor":Ljava/lang/reflect/Constructor;
    .end local v2    # "curLocale":Ljava/util/Locale;
    :catch_2
    move-exception v3

    goto :goto_3

    :catch_3
    move-exception v3

    goto :goto_3

    :catch_4
    move-exception v3

    goto :goto_3

    :catch_5
    move-exception v3

    goto :goto_3
.end method


# virtual methods
.method public computeSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 7
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 123
    invoke-static {p1}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/compat/AlphabeticIndexCompat;->getBucketIndex(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/launcher3/common/compat/AlphabeticIndexCompat;->getBucketLabel(I)Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, "sectionName":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 126
    .local v5, "trimmedSectionName":Ljava/lang/String;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 127
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 128
    .local v0, "c":I
    invoke-static {v0}, Ljava/lang/Character;->isDigit(I)Z

    move-result v3

    .line 129
    .local v3, "startsWithDigit":Z
    if-eqz v3, :cond_1

    .line 131
    const-string v2, "#"

    .line 144
    .end local v0    # "c":I
    .end local v2    # "sectionName":Ljava/lang/String;
    .end local v3    # "startsWithDigit":Z
    :cond_0
    :goto_0
    return-object v2

    .line 133
    .restart local v0    # "c":I
    .restart local v2    # "sectionName":Ljava/lang/String;
    .restart local v3    # "startsWithDigit":Z
    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->isLetter(I)Z

    move-result v4

    .line 134
    .local v4, "startsWithLetter":Z
    if-eqz v4, :cond_2

    .line 135
    iget-object v2, p0, Lcom/android/launcher3/common/compat/AlphabeticIndexCompat;->mDefaultMiscLabel:Ljava/lang/String;

    goto :goto_0

    .line 140
    :cond_2
    const-string v2, "\u2219"

    goto :goto_0
.end method

.method protected getBucketIndex(Ljava/lang/String;)I
    .locals 5
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 153
    iget-boolean v1, p0, Lcom/android/launcher3/common/compat/AlphabeticIndexCompat;->mHasValidAlphabeticIndex:Z

    if-eqz v1, :cond_0

    .line 155
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/common/compat/AlphabeticIndexCompat;->mGetBucketIndexMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/android/launcher3/common/compat/AlphabeticIndexCompat;->mAlphabeticIndex:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 160
    :goto_0
    return v1

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 160
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/common/compat/BaseAlphabeticIndex;->getBucketIndex(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method protected getBucketLabel(I)Ljava/lang/String;
    .locals 6
    .param p1, "index"    # I

    .prologue
    .line 167
    iget-boolean v1, p0, Lcom/android/launcher3/common/compat/AlphabeticIndexCompat;->mHasValidAlphabeticIndex:Z

    if-eqz v1, :cond_0

    .line 169
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/common/compat/AlphabeticIndexCompat;->mGetBucketLabelMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/android/launcher3/common/compat/AlphabeticIndexCompat;->mAlphabeticIndex:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_0
    return-object v1

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 174
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/common/compat/BaseAlphabeticIndex;->getBucketLabel(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public setMaxLabelCount(I)V
    .locals 6
    .param p1, "count"    # I

    .prologue
    .line 108
    iget-boolean v1, p0, Lcom/android/launcher3/common/compat/AlphabeticIndexCompat;->mHasValidAlphabeticIndex:Z

    if-eqz v1, :cond_0

    .line 110
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/common/compat/AlphabeticIndexCompat;->mSetMaxLabelCountMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/android/launcher3/common/compat/AlphabeticIndexCompat;->mAlphabeticIndex:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 115
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/common/compat/BaseAlphabeticIndex;->setMaxLabelCount(I)V

    goto :goto_0
.end method
