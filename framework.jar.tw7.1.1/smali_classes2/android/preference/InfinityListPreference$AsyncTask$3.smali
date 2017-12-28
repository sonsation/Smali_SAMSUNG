.class public Landroid/preference/InfinityListPreference$AsyncTask$3;
.super Landroid/os/AsyncTask;
.source "InfinityListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/preference/InfinityListPreference;->requestIcon(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/InfinityListPreference;


# direct methods
.method constructor <init>(Landroid/preference/InfinityListPreference;)V
    .locals 0

    iput-object p1, p0, Landroid/preference/InfinityListPreference$AsyncTask$3;->this$0:Landroid/preference/InfinityListPreference;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v0, 0x0

    aget-object v1, p1, v0

    iget-object v0, p0, Landroid/preference/InfinityListPreference$AsyncTask$3;->this$0:Landroid/preference/InfinityListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/InfinityListPreference;->getIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/preference/InfinityListPreference$AsyncTask$3;->doInBackground([Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroid/preference/InfinityListPreference$AsyncTask$3;->this$0:Landroid/preference/InfinityListPreference;

    iget-object v0, v0, Landroid/preference/InfinityListPreference;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/preference/InfinityListPreference$AsyncTask$3;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
