.class Landroid/preference/InfinityListPreference$2;
.super Ljava/lang/Object;
.source "InfinityListPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/preference/InfinityListPreference;->onBindDialogView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/InfinityListPreference;


# direct methods
.method constructor <init>(Landroid/preference/InfinityListPreference;)V
    .locals 0

    iput-object p1, p0, Landroid/preference/InfinityListPreference$2;->this$0:Landroid/preference/InfinityListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const-class v1, Landroid/preference/InfinityListPreference;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Landroid/preference/InfinityListPreference$2;->this$0:Landroid/preference/InfinityListPreference;

    invoke-virtual {v0}, Landroid/preference/InfinityListPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/preference/InfinityListPreference;->startActivityForResultLocal()V

    :cond_0
    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/preference/InfinityListPreference;->startActivityForResultSystem()V

    :cond_1
    return-void
.end method
