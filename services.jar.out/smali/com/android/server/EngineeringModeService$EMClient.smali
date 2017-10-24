.class public abstract Lcom/android/server/EngineeringModeService$EMClient;
.super Ljava/lang/Object;
.source "EngineeringModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/EngineeringModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "EMClient"
.end annotation


# instance fields
.field private mModes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mUid:I

.field final synthetic this$0:Lcom/android/server/EngineeringModeService;


# direct methods
.method public constructor <init>(Lcom/android/server/EngineeringModeService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/EngineeringModeService;

    .prologue
    .line 300
    iput-object p1, p0, Lcom/android/server/EngineeringModeService$EMClient;->this$0:Lcom/android/server/EngineeringModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/EngineeringModeService$EMClient;->mModes:Ljava/util/HashSet;

    .line 300
    return-void
.end method

.method public constructor <init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/EngineeringModeService;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 304
    iput-object p1, p0, Lcom/android/server/EngineeringModeService$EMClient;->this$0:Lcom/android/server/EngineeringModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    iput-object p2, p0, Lcom/android/server/EngineeringModeService$EMClient;->mName:Ljava/lang/String;

    .line 306
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/EngineeringModeService$EMClient;->mModes:Ljava/util/HashSet;

    .line 304
    return-void
.end method

.method public constructor <init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/EngineeringModeService;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .prologue
    .line 309
    iput-object p1, p0, Lcom/android/server/EngineeringModeService$EMClient;->this$0:Lcom/android/server/EngineeringModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    iput-object p2, p0, Lcom/android/server/EngineeringModeService$EMClient;->mName:Ljava/lang/String;

    .line 311
    iput p3, p0, Lcom/android/server/EngineeringModeService$EMClient;->mUid:I

    .line 312
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/EngineeringModeService$EMClient;->mModes:Ljava/util/HashSet;

    .line 309
    return-void
.end method


# virtual methods
.method public addMode(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "mode"    # Ljava/lang/Integer;

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/android/server/EngineeringModeService$EMClient;->getModes()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 321
    return-void
.end method

.method protected checkSignature(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 338
    const/4 v3, 0x0

    .line 339
    .local v3, "ret":Z
    invoke-static {}, Lcom/android/server/EngineeringModeService;->-get0()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 342
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/16 v4, 0x40

    :try_start_0
    invoke-virtual {v2, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 343
    .local v1, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v4, p2, :cond_0

    .line 344
    const-string/jumbo v4, "android"

    invoke-virtual {v2, v4, p1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    .line 345
    const/4 v3, 0x1

    .line 353
    .end local v1    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v3

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "EngineeringModeService"

    const-string/jumbo v5, "CheckSigature Exception occured"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected compareModes(Ljava/lang/Integer;)Z
    .locals 1
    .param p1, "mode"    # Ljava/lang/Integer;

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/android/server/EngineeringModeService$EMClient;->getModes()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected compareName(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/android/server/EngineeringModeService$EMClient;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected compareUid(I)Z
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/android/server/EngineeringModeService$EMClient;->getUid()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getModes()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/server/EngineeringModeService$EMClient;->mModes:Ljava/util/HashSet;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/server/EngineeringModeService$EMClient;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 317
    iget v0, p0, Lcom/android/server/EngineeringModeService$EMClient;->mUid:I

    return v0
.end method

.method public abstract isEmClient(Ljava/lang/String;ILjava/lang/Integer;)Z
.end method
