package br.com.casadocodigo.loja.audit;

import javax.persistence.PostPersist;
import javax.persistence.PostUpdate;

import org.springframework.stereotype.Component;

import br.com.casadocodigo.loja.utils.BeanUtil;

@Component
public class AuditEntityListener {

	@PostUpdate
	@PostPersist
	public void postUpdate(Auditable auditable){
		Audit entityAudit = new Audit("Dênis", auditable.toString());

		AuditRepository repository = BeanUtil.getBean(AuditRepository.class);
		repository.save(entityAudit);
	}
}
