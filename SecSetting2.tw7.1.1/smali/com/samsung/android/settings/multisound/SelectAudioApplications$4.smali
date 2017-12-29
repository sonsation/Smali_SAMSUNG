.class Lcom/samsung/android/settings/multisound/SelectAudioApplications$4;
.super Ljava/lang/Object;
.source "SelectAudioApplications.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/multisound/SelectAudioApplications;->addAddItem()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/multisound/SelectAudioApplications;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/multisound/SelectAudioApplications;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/multisound/SelectAudioApplications;

    .prologue
    .line 333
    iput-object p1, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications$4;->this$0:Lcom/samsung/android/settings/multisound/SelectAudioApplications;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 336
    iget-object v0, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications$4;->this$0:Lcom/samsung/android/settings/multisound/SelectAudioApplications;

    invoke-virtual {v0}, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 337
    const-class v1, Lcom/samsung/android/settings/multisound/AddAudioApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 338
    const v3, 0x7f0b0c21

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, v2

    .line 336
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 339
    iget-object v0, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications$4;->this$0:Lcom/samsung/android/settings/multisound/SelectAudioApplications;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->-set0(Lcom/samsung/android/settings/multisound/SelectAudioApplications;Z)Z

    .line 335
    return-void
.end method
