.class Lcom/android/settings/SettingsActivity$12;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsActivity;->updateTilesList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/SettingsActivity;

    .prologue
    .line 2050
    iput-object p1, p0, Lcom/android/settings/SettingsActivity$12;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2053
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$12;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-static {v0}, Lcom/android/settings/SettingsActivity;->-wrap0(Lcom/android/settings/SettingsActivity;)V

    .line 2052
    return-void
.end method
