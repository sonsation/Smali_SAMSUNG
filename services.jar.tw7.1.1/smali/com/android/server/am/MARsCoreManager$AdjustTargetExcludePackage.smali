.class public Lcom/android/server/am/MARsCoreManager$AdjustTargetExcludePackage;
.super Ljava/lang/Object;
.source "MARsCoreManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsCoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdjustTargetExcludePackage"
.end annotation


# instance fields
.field public condition:I

.field public packageName:Ljava/lang/String;

.field public pkgNameMatchType:Ljava/lang/String;

.field policyNum:I

.field final synthetic this$0:Lcom/android/server/am/MARsCoreManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MARsCoreManager;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/MARsCoreManager$AdjustTargetExcludePackage;->this$0:Lcom/android/server/am/MARsCoreManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/am/MARsCoreManager$AdjustTargetExcludePackage;->policyNum:I

    iput p3, p0, Lcom/android/server/am/MARsCoreManager$AdjustTargetExcludePackage;->condition:I

    iput-object p4, p0, Lcom/android/server/am/MARsCoreManager$AdjustTargetExcludePackage;->pkgNameMatchType:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/am/MARsCoreManager$AdjustTargetExcludePackage;->packageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdjustTargetExcludePackage: policyNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/MARsCoreManager$AdjustTargetExcludePackage;->policyNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", condition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/MARsCoreManager$AdjustTargetExcludePackage;->condition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pkgNameMatchType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/MARsCoreManager$AdjustTargetExcludePackage;->pkgNameMatchType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/MARsCoreManager$AdjustTargetExcludePackage;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
