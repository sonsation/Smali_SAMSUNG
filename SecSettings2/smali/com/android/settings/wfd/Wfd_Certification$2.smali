.class Lcom/android/settings/wfd/Wfd_Certification$2;
.super Landroid/preference/CheckBoxPreference;
.source "Wfd_Certification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wfd/Wfd_Certification;->buildCertificationMenu(Landroid/preference/PreferenceScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/Wfd_Certification;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/Wfd_Certification;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/wfd/Wfd_Certification;
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/settings/wfd/Wfd_Certification$2;->this$0:Lcom/android/settings/wfd/Wfd_Certification;

    invoke-direct {p0, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 2

    .prologue
    .line 145
    iget-object v1, p0, Lcom/android/settings/wfd/Wfd_Certification$2;->this$0:Lcom/android/settings/wfd/Wfd_Certification;

    iget-object v0, p0, Lcom/android/settings/wfd/Wfd_Certification$2;->this$0:Lcom/android/settings/wfd/Wfd_Certification;

    invoke-static {v0}, Lcom/android/settings/wfd/Wfd_Certification;->-get3(Lcom/android/settings/wfd/Wfd_Certification;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Lcom/android/settings/wfd/Wfd_Certification;->-set1(Lcom/android/settings/wfd/Wfd_Certification;Z)Z

    .line 146
    iget-object v0, p0, Lcom/android/settings/wfd/Wfd_Certification$2;->this$0:Lcom/android/settings/wfd/Wfd_Certification;

    iget-object v1, p0, Lcom/android/settings/wfd/Wfd_Certification$2;->this$0:Lcom/android/settings/wfd/Wfd_Certification;

    invoke-static {v1}, Lcom/android/settings/wfd/Wfd_Certification;->-get3(Lcom/android/settings/wfd/Wfd_Certification;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/wfd/Wfd_Certification;->-wrap0(Lcom/android/settings/wfd/Wfd_Certification;Z)V

    .line 147
    iget-object v0, p0, Lcom/android/settings/wfd/Wfd_Certification$2;->this$0:Lcom/android/settings/wfd/Wfd_Certification;

    invoke-static {v0}, Lcom/android/settings/wfd/Wfd_Certification;->-get3(Lcom/android/settings/wfd/Wfd_Certification;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/Wfd_Certification$2;->setChecked(Z)V

    .line 144
    return-void

    .line 145
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
