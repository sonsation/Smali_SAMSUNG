.class public final Lcom/samsung/android/sdk/accessory/i;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field private static b:I

.field private static c:I

.field private static d:I

.field private static e:I

.field private static f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x1

    const-string v0, "com.samsung.accessory"

    sput-object v0, Lcom/samsung/android/sdk/accessory/i;->a:Ljava/lang/String;

    sput v1, Lcom/samsung/android/sdk/accessory/i;->b:I

    sput v1, Lcom/samsung/android/sdk/accessory/i;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/c;
        }
    .end annotation

    const/4 v5, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/accessory/i;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v2, Lcom/samsung/android/sdk/accessory/i;->b:I

    const-string v2, "[SA_SDK]SASdkConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Accessory Framework:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " Accessory SDK:2.5.2 r3"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/sdk/accessory/i;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "[SA_SDK]SASdkConfig"

    const-string v1, "Accessory framework does not support thin-sdk"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    :try_start_1
    const-string v0, "[SA_SDK]SASdkConfig"

    const-string v1, "Accessory Framework Not installed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/sdk/accessory/c;

    const/4 v1, 0x2

    const-string v2, "Accessory Framework Not installed"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/accessory/c;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    const-string v0, "[SA_SDK]SASdkConfig"

    const-string v1, "Accessory Framework Not installed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/sdk/accessory/c;

    const-string v1, "Accessory Framework Not installed"

    invoke-direct {v0, v5, v1}, Lcom/samsung/android/sdk/accessory/c;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method static a()I
    .locals 1

    sget v0, Lcom/samsung/android/sdk/accessory/i;->d:I

    return v0
.end method

.method static a(I)V
    .locals 0

    sput p0, Lcom/samsung/android/sdk/accessory/i;->d:I

    return-void
.end method

.method static a(Landroid/content/Context;)Z
    .locals 7

    const/4 v2, -0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "[SA_SDK]SASdkConfig"

    const-string v2, "Package Manager is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v4, 0x1000

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "[SA_SDK]SASdkConfig"

    const-string v2, "PackageInfo is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v1, "[SA_SDK]SASdkConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Admin Permission check failed for Package"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v4, :cond_0

    move v1, v0

    :goto_1
    array-length v5, v4

    if-lt v1, v5, :cond_4

    move v1, v2

    :cond_3
    if-ne v1, v2, :cond_5

    const-string v1, "[SA_SDK]SASdkConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Accessory service permission not granted for Package"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string v5, "com.samsung.accessory.permission.ACCESSORY_FRAMEWORK"

    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    const-string v1, "[SA_SDK]SASdkConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Accessory service permission available for Package"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static b()I
    .locals 1

    sget v0, Lcom/samsung/android/sdk/accessory/i;->e:I

    return v0
.end method

.method static b(I)V
    .locals 0

    sput p0, Lcom/samsung/android/sdk/accessory/i;->e:I

    return-void
.end method

.method static c()I
    .locals 1

    sget v0, Lcom/samsung/android/sdk/accessory/i;->f:I

    return v0
.end method

.method static c(I)V
    .locals 0

    sput p0, Lcom/samsung/android/sdk/accessory/i;->f:I

    return-void
.end method

.method public static d()I
    .locals 1

    sget v0, Lcom/samsung/android/sdk/accessory/i;->b:I

    return v0
.end method

.method public static d(I)V
    .locals 0

    sput p0, Lcom/samsung/android/sdk/accessory/i;->c:I

    return-void
.end method

.method public static e()I
    .locals 1

    sget v0, Lcom/samsung/android/sdk/accessory/i;->c:I

    return v0
.end method

.method static f()Ljava/lang/String;
    .locals 1

    const-string v0, "UTF-8"

    return-object v0
.end method

.method static g()Z
    .locals 2

    sget v0, Lcom/samsung/android/sdk/accessory/i;->b:I

    const/16 v1, 0x197

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static h()Z
    .locals 2

    sget v0, Lcom/samsung/android/sdk/accessory/i;->c:I

    const/16 v1, 0x197

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static i()Z
    .locals 2

    sget v0, Lcom/samsung/android/sdk/accessory/i;->b:I

    const/16 v1, 0xcd

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static j()Z
    .locals 2

    sget v0, Lcom/samsung/android/sdk/accessory/i;->b:I

    const/16 v1, 0xda

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
