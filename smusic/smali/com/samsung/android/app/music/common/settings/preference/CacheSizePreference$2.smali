.class Lcom/samsung/android/app/music/common/settings/preference/CacheSizePreference$2;
.super Ljava/lang/Object;
.source "CacheSizePreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/settings/preference/CacheSizePreference;->clearCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/settings/preference/CacheSizePreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/settings/preference/CacheSizePreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/settings/preference/CacheSizePreference;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/samsung/android/app/music/common/settings/preference/CacheSizePreference$2;->this$0:Lcom/samsung/android/app/music/common/settings/preference/CacheSizePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/preference/CacheSizePreference$2;->this$0:Lcom/samsung/android/app/music/common/settings/preference/CacheSizePreference;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/settings/preference/CacheSizePreference;->access$000(Lcom/samsung/android/app/music/common/settings/preference/CacheSizePreference;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 94
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/preference/CacheSizePreference$2;->this$0:Lcom/samsung/android/app/music/common/settings/preference/CacheSizePreference;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/settings/preference/CacheSizePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0242

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 96
    return-void
.end method
