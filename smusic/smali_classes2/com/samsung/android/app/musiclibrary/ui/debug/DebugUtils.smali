.class public Lcom/samsung/android/app/musiclibrary/ui/debug/DebugUtils;
.super Ljava/lang/Object;
.source "DebugUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/debug/DebugUtils$LogTag;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Debug"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFieldsStringValueNameForDebugging(Ljava/lang/Object;I)Ljava/lang/String;
    .locals 8
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "stringType"    # I

    .prologue
    .line 119
    if-nez p0, :cond_1

    .line 120
    const/4 v3, 0x0

    .line 134
    :cond_0
    :goto_0
    return-object v3

    .line 122
    :cond_1
    const/4 v3, 0x0

    .line 123
    .local v3, "stringTypeName":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 125
    .local v2, "fields":[Ljava/lang/reflect/Field;
    :try_start_0
    array-length v6, v2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_0

    aget-object v1, v2, v5

    .line 126
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    .line 127
    .local v4, "type":I
    if-ne v4, p1, :cond_2

    .line 128
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 125
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 131
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "type":I
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    const-string v5, "Debug"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get debug field : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 131
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public static isRoboUnitTest()Z
    .locals 2

    .prologue
    .line 138
    const-string/jumbo v0, "robolectric"

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
