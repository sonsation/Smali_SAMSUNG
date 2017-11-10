.class Lcom/sec/android/app/camera/menu/ProColorTuneList$ColorTuneListAdapter$1;
.super Ljava/lang/Object;
.source "ProColorTuneList.java"

# interfaces
.implements Lcom/sec/android/app/camera/widget/gl/ColorTuneItem$ColorTuneItemSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/ProColorTuneList$ColorTuneListAdapter;->getView(ILcom/samsung/android/glview/GLView;)Lcom/samsung/android/glview/GLView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/camera/menu/ProColorTuneList$ColorTuneListAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/ProColorTuneList$ColorTuneListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList$ColorTuneListAdapter$1;->this$1:Lcom/sec/android/app/camera/menu/ProColorTuneList$ColorTuneListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorTuneItemSelected(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList$ColorTuneListAdapter$1;->this$1:Lcom/sec/android/app/camera/menu/ProColorTuneList$ColorTuneListAdapter;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/ProColorTuneList$ColorTuneListAdapter;->this$0:Lcom/sec/android/app/camera/menu/ProColorTuneList;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->mProColorTuneListSelectListener:Lcom/sec/android/app/camera/menu/ProColorTuneList$ProColorTuneListSelectListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList$ColorTuneListAdapter$1;->this$1:Lcom/sec/android/app/camera/menu/ProColorTuneList$ColorTuneListAdapter;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/ProColorTuneList$ColorTuneListAdapter;->this$0:Lcom/sec/android/app/camera/menu/ProColorTuneList;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->mProColorTuneListSelectListener:Lcom/sec/android/app/camera/menu/ProColorTuneList$ProColorTuneListSelectListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/menu/ProColorTuneList$ProColorTuneListSelectListener;->onProColorTuneListSelect(I)V

    :cond_0
    return-void
.end method
