.class Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$2;
.super Ljava/lang/Object;
.source "PowerSavingValueFragment.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    .prologue
    .line 1012
    iput-object p1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$2;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 2

    .prologue
    .line 1016
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$2;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get10(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    .line 1015
    .local v0, "stateId":Ljava/lang/String;
    return-void
.end method