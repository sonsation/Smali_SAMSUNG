.class Lcom/samsung/android/settings/notification/SoundSettings$19;
.super Ljava/lang/Object;
.source "SoundSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/SoundSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/SoundSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/SoundSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/notification/SoundSettings;

    .prologue
    .line 576
    iput-object p1, p0, Lcom/samsung/android/settings/notification/SoundSettings$19;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 578
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings$19;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SoundSettings;->-wrap6(Lcom/samsung/android/settings/notification/SoundSettings;)V

    .line 579
    const/4 v0, 0x1

    return v0
.end method
