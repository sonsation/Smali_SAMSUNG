.class Lcom/samsung/android/settings/CloudAccountSettings$6;
.super Ljava/lang/Object;
.source "CloudAccountSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/CloudAccountSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/CloudAccountSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/CloudAccountSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/CloudAccountSettings;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/samsung/android/settings/CloudAccountSettings$6;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 201
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 200
    return-void
.end method
