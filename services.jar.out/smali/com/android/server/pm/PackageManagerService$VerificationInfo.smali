.class Lcom/android/server/pm/PackageManagerService$VerificationInfo;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VerificationInfo"
.end annotation


# static fields
.field public static final NO_UID:I = -0x1


# instance fields
.field final installerUid:I

.field final originatingUid:I

.field final originatingUri:Landroid/net/Uri;

.field final referrer:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/net/Uri;Landroid/net/Uri;II)V
    .locals 0
    .param p1, "originatingUri"    # Landroid/net/Uri;
    .param p2, "referrer"    # Landroid/net/Uri;
    .param p3, "originatingUid"    # I
    .param p4, "installerUid"    # I

    .prologue
    .line 16645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16646
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUri:Landroid/net/Uri;

    .line 16647
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->referrer:Landroid/net/Uri;

    .line 16648
    iput p3, p0, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUid:I

    .line 16649
    iput p4, p0, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->installerUid:I

    .line 16645
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 16653
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16654
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 16655
    const-string/jumbo v1, "originatingUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16656
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16659
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->referrer:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 16660
    const-string/jumbo v1, ",referrer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16661
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->referrer:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16664
    :cond_1
    const-string/jumbo v1, ",originatingUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16665
    iget v1, p0, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16667
    const-string/jumbo v1, ",installerUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16668
    iget v1, p0, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->installerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16670
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
