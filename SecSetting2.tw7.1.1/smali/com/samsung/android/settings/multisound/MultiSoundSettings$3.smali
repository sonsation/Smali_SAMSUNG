.class Lcom/samsung/android/settings/multisound/MultiSoundSettings$3;
.super Ljava/lang/Object;
.source "MultiSoundSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/multisound/MultiSoundSettings;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/multisound/MultiSoundSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/multisound/MultiSoundSettings;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings$3;->this$0:Lcom/samsung/android/settings/multisound/MultiSoundSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x0

    .line 213
    iget-object v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings$3;->this$0:Lcom/samsung/android/settings/multisound/MultiSoundSettings;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->-set0(Lcom/samsung/android/settings/multisound/MultiSoundSettings;I)I

    .line 214
    iget-object v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings$3;->this$0:Lcom/samsung/android/settings/multisound/MultiSoundSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->-get3(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 212
    return-void
.end method
