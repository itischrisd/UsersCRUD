<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
</div>
<footer class="sticky-footer bg-white">
  <div class="container my-auto">
    <div class="copyright text-center my-auto">
      <span>Copyright &copy; Your Website 2021</span>
    </div>
  </div>
</footer>
</div>
</div>
<a class="scroll-to-top rounded" href="#page-top">
  <i class="fas fa-angle-up"></i>
</a>
<div aria-hidden="true" aria-labelledby="exampleModalLabel" class="modal fade" id="logoutModal" role="dialog"
     tabindex="-1">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
        <button aria-label="Close" class="close" data-dismiss="modal" type="button">
          <span aria-hidden="true">×</span>
        </button>
      </div>
      <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
      <div class="modal-footer">
        <button class="btn btn-secondary" data-dismiss="modal" type="button">Cancel</button>
        <a class="btn btn-primary" href="<c:url value="/user/list"/>">Logout</a>
      </div>
    </div>
  </div>
</div>
<script src="<c:url value="/theme/vendor/jquery/jquery.min.js"/>"></script>
<script src="<c:url value="/theme/vendor/bootstrap/js/bootstrap.bundle.min.js"/>"></script>
<script src="<c:url value="/theme/vendor/jquery-easing/jquery.easing.min.js"/>"></script>
<script src="<c:url value="/theme/js/sb-admin-2.min.js"/>"></script>
<script src="<c:url value="/theme/vendor/chart.js/Chart.min.js"/>"></script>
<script src="<c:url value="/theme/js/demo/chart-area-demo.js"/>"></script>
<script src="<c:url value="/theme/js/demo/chart-pie-demo.js"/>"></script>
</body>
</html>