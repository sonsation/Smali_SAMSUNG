.class public Lcom/samsung/android/apex/motionphoto/persistence/SemSEFWrapper;
.super Ljava/lang/Object;
.source "SemSEFWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/apex/motionphoto/persistence/SemSEFWrapper$SEFDataPosition64;
    }
.end annotation


# instance fields
.field c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Lcom/samsung/android/media/SemExtendedFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/samsung/android/media/SemExtendedFormat;

    iput-object v0, p0, Lcom/samsung/android/apex/motionphoto/persistence/SemSEFWrapper;->c:Ljava/lang/Class;

    return-void
.end method

.method public static getSEFDataPosition64(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/apex/motionphoto/persistence/SemSEFWrapper$SEFDataPosition64;
    .locals 16

    const-class v0, Lcom/samsung/android/media/SemExtendedFormat;

    const/4 v10, 0x0

    :try_start_0
    const-string v12, "getSEFDataPosition64"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Class;

    const/4 v14, 0x0

    const-class v15, Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x1

    const-class v15, Ljava/lang/String;

    aput-object v15, v13, v14

    invoke-virtual {v0, v12, v13}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v12, 0x0

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object p0, v13, v14

    const/4 v14, 0x1

    aput-object p1, v13, v14

    invoke-virtual {v3, v12, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    const-string v13, "offset"

    invoke-virtual {v12, v13}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    const-string v13, "length"

    invoke-virtual {v12, v13}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v7, v1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v8

    invoke-virtual {v6, v1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v4

    new-instance v11, Lcom/samsung/android/apex/motionphoto/persistence/SemSEFWrapper$SEFDataPosition64;

    invoke-direct {v11}, Lcom/samsung/android/apex/motionphoto/persistence/SemSEFWrapper$SEFDataPosition64;-><init>()V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_6

    :try_start_1
    iput-wide v8, v11, Lcom/samsung/android/apex/motionphoto/persistence/SemSEFWrapper$SEFDataPosition64;->offset:J

    iput-wide v4, v11, Lcom/samsung/android/apex/motionphoto/persistence/SemSEFWrapper$SEFDataPosition64;->length:J
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_7

    move-object v10, v11

    :goto_0
    return-object v10

    :catch_0
    move-exception v2

    :goto_1
    invoke-virtual {v2}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v10, v11

    goto :goto_1

    :catch_2
    move-exception v2

    goto :goto_1

    :catch_3
    move-exception v2

    move-object v10, v11

    goto :goto_1

    :catch_4
    move-exception v2

    goto :goto_1

    :catch_5
    move-exception v2

    move-object v10, v11

    goto :goto_1

    :catch_6
    move-exception v2

    goto :goto_1

    :catch_7
    move-exception v2

    move-object v10, v11

    goto :goto_1
.end method
