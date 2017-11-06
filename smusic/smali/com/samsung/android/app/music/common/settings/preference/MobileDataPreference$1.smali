.class Lcom/samsung/android/app/music/common/settings/preference/MobileDataPreference$1;
.super Ljava/lang/Object;
.source "MobileDataPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/settings/preference/MobileDataPreference;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/settings/preference/MobileDataPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/settings/preference/MobileDataPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/settings/preference/MobileDataPreference;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/samsung/android/app/music/common/settings/preference/MobileDataPreference$1;->this$0:Lcom/samsung/android/app/music/common/settings/preference/MobileDataPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/preference/MobileDataPreference$1;->this$0:Lcom/samsung/android/app/music/common/settings/preference/MobileDataPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/settings/preference/MobileDataPreference;->setChecked(Z)V

    .line 80
    return-void
.end method
